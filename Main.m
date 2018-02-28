% Códigos para FEM Linear Elástico em EPD
% Fevereiro / 2018
% Wagner Rupp


clear; close all;
% Determina e adiciona todas as subfolders
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

%% Definição dos arquivos de entrada e saida

%Input
caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\Resultados Abaqus\';
inpNome = 'Viguinha.inp';
% inpNome = 'Job-1.inp';
    
%Output
caminhoOutput = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Arquivos_Saída\';
Unome = 'Deslocamentos_Nodais.txt';
Tnome = 'Tensão_elemento.txt';
Defnome =  'Desformacao_elemento.txt';

%Full path
INPfile = [caminhoInput inpNome];  


%% Definição do material
E = 2e5;
v = 0.3;
C = Cept(E,v);

%% Definições do tipo de Elemento

ngl=2;

%% Definição da Malha

% [Ncoord,Nconec] = LeMalha(CaminhoArquivoNo,CaminhoArquivoElem);
    [Ncoord,Nconec] = leINP(INPfile);
 
     Ncoord(:,2) = 10*Ncoord(:,2);   % Deletar isso.     

    Nnos = size(Ncoord,1); 

% Condições de contorno 
 
    % Matriz de deslocamentos nodais
    %  % Nno   U   GL (x=1, y=2)
    
    xmin=min(Ncoord(:,2)); % se eu soubesse a priori seria melhor
    Set = NodePosFinder(Ncoord,xmin);
    
    Mcc = set2Mcc(Set,0,1,[]);
    Mcc = set2Mcc(Set,0,2,Mcc);

    % Matriz de forcas nodais
         
    xmax=max(Ncoord(:,2)); % se eu soubesse a priori seria melhor
    SetDireita = NodePosFinder(Ncoord,xmax);
    SetLinhaNeutraDir = NodePosYFinder(Ncoord(SetDireita,:),5/2);
    
    Fface= -1;
    
    f = Fface;
%      f = Fface/size(Set2,1) ; % Rever cargas nodais consistentes
    
    Mfn = set2Mcc( SetLinhaNeutraDir,f,2,[]);
%     Mfn = set2Mcc(Set2,f,2,Mfn);       
         
%% Processamento  

% Declaração inicial de Variaveis

Kglobal = zeros(ngl*Nnos);
F = zeros(ngl*Nnos,1);

% Reorganiza a matriz de coordenadas nodais (numeração crescente)
    SNcoord = sortrows(Ncoord);
    Mcc = sortrows(Mcc);
    
% Assembly da matriz de rigidez global
% AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
    Kglobal = AssemblyDaGlobal2(Nconec,SNcoord,Kglobal,C);
  
% Assembly do vetor de forças

for i=1:size(Mfn,1)  
   F(2*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2); 
end
 
% Eliminação de linhas/colunas
 
[Kdel,Fdel] = constringeK (Kglobal,F,Mcc,ngl);
 
 % Calculo dos deslocamentos
 
 U = Kdel  \ Fdel ;
 
 %% Pós processamento
 % AQUI ATUALIZAR PARA O GL
% Reconstruindo o vetor de deslocamentos
   Ufinal = U;
   for L = 1:size(Mcc,1)
      glGlobal= ngl*(Mcc(L,1)-1) +  Mcc(L,3);
      Ufinal = [Ufinal(1:glGlobal-1) ;   Mcc(L,2) ; Ufinal(glGlobal:end)];
   end

 % Organiza o vetor de deslocamentos por no  
   Uorg = organizaU(Ufinal,ngl,Nnos);
 % Coordenadas nodais deslocadas
    DefNcoor = defCoord(SNcoord,Ufinal);

 % Calculo das Reacoes
    Ffinal = Kglobal*Ufinal; % Não é a maneira melhor mas é simples.   
  
%% Visualizacao    
       
%     posT3;
    posT6;

%% Problema Viga

    Vuy = deslocLinhaNeutra(SNcoord,Uorg);
    Comparacao_Viga;
   
      
   