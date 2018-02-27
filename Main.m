% C�digos para FEM Linear El�stico em EPD
% Fevereiro / 2018
% Wagner Rupp


clear; close all;
% Determina e adiciona todas as subfolders
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

%% Defini��o dos arquivos de entrada e saida

%Input
caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\Resultados Abaqus\';
inpNome = 'Job-1.inp';
    
%Output
caminhoOutput = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Arquivos_Sa�da\';
Unome = 'Deslocamentos_Nodais.txt';
Tnome = 'Tens�o_elemento.txt';
Defnome =  'Desformacao_elemento.txt';

%Full path
INPfile = [caminhoInput inpNome];  


%% Defini��o do material
E = 2e5;
v = 0.3;
Cd = Celi(E,v);

%% Defini��es do tipo de Elemento

ngl=2;
% NnosElemento = 3;  

%% Defini��o da Malha

% [Ncoord,Nconec] = LeMalha(CaminhoArquivoNo,CaminhoArquivoElem);
  %  [Ncoord,Nconec] = leINP(INPfile);
 
    Ncoord = [ 1 0 0;
               2 1 0;
               3 0 1;
               4 0.5 0;
               5 0.5 0.5;
               6 0 0.5;
               7 1  1;
               8 1 0.5;
               9 0.5 1];
           
    Nconec = [1 1 2 3 4 5 6;              
              2 3 2 7 5 8 9];
    %            

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
    
    f= -50;
    Mfn = set2Mcc(Set2,f,2,[]);
%     Mfn = set2Mcc(Set2,f,2,Mfn);         
         
%% Processamento  

% Declara��o inicial de Variaveis

Kglobal = zeros(ngl*Nnos);
F = zeros(ngl*Nnos,1);

% Reorganiza a matriz de coordenadas nodais (numera��o crescente)
    SNcoord = sortrows(Ncoord);
    Mcc = sortrows(Mcc);
    
% Assembly da matriz de rigidez global
% AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
    Kglobal = AssemblyDaGlobal2(Nconec,SNcoord,Kglobal,Cd);
    
    aa=eigs(Kglobal);

% Assembly do vetor de for�as

for i=1:size(Mfn,1)  
   F(2*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2); 
end
 
% Elimina��o de linhas/colunas
 
[Kdel,Fdel] = constringeK (Kglobal,F,Mcc,ngl);
 
 % Calculo dos deslocamentos
 
 U = Kdel  \ Fdel ;
 
 %% P�s processamento
 % AQUI ATUALIZAR PARA O GL
% Reconstruindo o vetor de deslocamentos
   Ufinal = U;
   for L = 1:size(Mcc,1)
      glGlobal= Mcc(L,1)*ngl-2 +  Mcc(L,3);
      Ufinal = [Ufinal(1:glGlobal-1) ;   Mcc(L,2) ; Ufinal(glGlobal:end)];
   end

 % Coordenadas nodais deslocadas
 % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
   DefNcoor = defCoord(SNcoord,Ufinal);

 % Calculo de deforma��es
% AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
%    MDef = DefLin(Nconec,SNcoord,Ufinal);
 
 % Calculo de tens�es
 % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
%    Mtensao = CalcTensao(Cd,MDef);  
 % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO  
%    VM = vonMises(Mtensao);
 % Calculo de Rea��es
 
   Ffinal = Kglobal*Ufinal; % N�o � a maneira melhor mas � simples. 
  
   
 %% Plot
 % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
%     plotDefIndef(SNcoord, Nconec,DefNcoor);
%     
%     plotMap(Mtensao(:,2),DefNcoor,Nconec); title('\sigma _{xx}');
%     plotMap(MDef(:,2),DefNcoor,Nconec); title('\epsilon _{xx}');
%     plotMap(VM(:,2),DefNcoor,Nconec);  title('Von Mises');
    
%% Saida de dados  
% AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
%     escreveDeslocamento(Ufinal,[caminhoOutput Unome]);
%     escreveTensao(Mtensao,[caminhoOutput Tnome]);
%     escreveDeformacao(MDef,[caminhoOutput Defnome]);

      
   