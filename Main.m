% C�digos para FEM Linear El�stico em EPD
% Fevereiro / 2018
% Wagner Rupp


clear; close all;
% Determina e adiciona todas as subfolders
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

%% Defini��o dos arquivos de entrada e saida
%Input
caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\NovaMalha\';

NodeNome = 'NodeFile.inp';
ElemNome = 'ElemFile.inp';

%Output
caminhoOutput = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Arquivos_Sa�da\';
Unome = 'Deslocamentos_Nodais.txt';

%% Defini��o do material
E = 2e5;
v = 0.3;
Cd = Celi(E,v);

%% Defini��es do tipo de Elemento

ngl=2;
NnosElemento = 3;  


%% Defini��o da Malha

CaminhoArquivoNo = [caminhoInput NodeNome ];
CaminhoArquivoElem = [caminhoInput ElemNome ];

[Ncoord,Nconec] = LeMalha(CaminhoArquivoNo,CaminhoArquivoElem);

Nnos = size(Ncoord,1); 

% Condi��es de contorno 
 
    % Matriz de deslocamentos nodais
    %  % Nno   U   GL (x=1, y=2)
    
    xmin=min(Ncoord(:,2)); % se eu soubesse a priori seria melhor
    Set = NodePosFinder(Ncoord,xmin);
    
    Mcc = set2Mcc(Set,0,1,[]);
    Mcc = set2Mcc(Set,0,2,Mcc);
    
 
         % Matriz de forcas nodais
         
    xmax=max(Ncoord(:,2)); % se eu soubesse a priori seria melhor
    Set2 = NodePosFinder(Ncoord,xmax);
    
    f= -500;
    Mfn = set2Mcc(Set2,f,1,[]);
%     Mfn = set2Mcc(Set2,f,2,Mfn);         
         

   

 
%% Processamento  

% Declara��o inicial de Variaveis

Kglobal = zeros(ngl*Nnos);
F=zeros(ngl*Nnos,1);


% Reorganiza a matriz de coordenadas nodais (numera��o crescente)
    SNcoord = sortrows(Ncoord);
    Mcc = sortrows(Mcc);
    
% Assembly da matriz de rigidez global

for k = 1: size(Nconec,1);
    % Acha os n�s do elemento
    n1 = Nconec(k,2);
    n2 = Nconec(k,3);
    n3 = Nconec(k,4);
    
    % Acha a posi��o dos n�s
    X=[SNcoord(n1,2);SNcoord(n2,2);SNcoord(n3,2)];
    Y=[SNcoord(n1,3);SNcoord(n2,3);SNcoord(n3,3)];
        
    % Gera��o da matriz elementar
    Kelem = Ketp(X,Y,Cd);
    
    % Assembly no elemento na Global    

    Kglobal = AssemblyGlobal(Kglobal,NnosElemento,Nconec,Kelem,k); 
   
end

% Assembly do vetor de for�as

for i=1:size(Mfn,1)  
   F(2*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2); 
end
 
% Elimina��o de linhas/colunas
 
 Kdel = Kglobal;
 Fdel = F;
 
 for i=0:size(Mcc,1)-1
     
 Nno = Mcc(end-i,1);
 GL = Mcc(end-i,3);
 
 Kdel(2*(Nno-1)+GL,:)=[];
 Kdel(:,2*(Nno-1)+GL)=[];
 
 Fdel(2*(Nno-1)+GL) = [];
 
 end
 
 % Calculo dos deslocamentos
 
 U = Kdel  \ Fdel ;
  
 
 %% P�s processamento
 
% Reconstruindo o vetor de deslocamentos
   Ufinal = U;
   for L = 1:size(Mcc,1)
      glGlobal= Mcc(L,1)*ngl-2 +  Mcc(L,3);
      Ufinal = [Ufinal(1:glGlobal-1) ;   Mcc(L,2) ; Ufinal(glGlobal:end)];
   end
 
 % Coordenadas nodais deslocadas
 
   DefNcoor = defCoord(SNcoord,Ufinal);
 
 % Calculo de deforma��es

   MDef = DefLin(Nconec,SNcoord,Ufinal);
 
 % Calculo de tens�es
 
   Mtensao = CalcTensao(Cd,MDef);  
   
 % Calculo de Rea��es
 
  Ffinal = Kglobal*Ufinal; % N�o � a maneira melhor mas � simples. 
   
 %% Plot
 
    figure;
    hold on; axis equal;   
 
    plotNodes(SNcoord,'bo');
    plotElements(SNcoord, Nconec,'k')
    
    plotNodes(DefNcoor,'ro');
    plotElements(DefNcoor, Nconec,'m')
    
%% Saida de dados

    

    escreveU(Ufinal,[caminhoInput Unome]);

      
   