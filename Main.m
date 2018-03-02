% Códigos para FEM Linear Elástico em EPD
% Fevereiro / 2018
% Wagner Rupp


clear; close all;
% Determina e adiciona todas as subfolders
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

%% Definição dos arquivos de entrada e saida

%Input
% caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\Resultados Abaqus\';
% inpNome = 'Viguinha.inp';
caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Benchmarks\Vaso de Pressao\';
inpNome = 'MalhaVaso.inp';
    
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

% C = Cepd(E,v);
% C = Cept(E,v);
C = Caxis(E,v);

%% Definições do tipo de Elemento

ngl=2;

%% Definição da Malha

% [Ncoord,Nconec] = LeMalha(CaminhoArquivoNo,CaminhoArquivoElem);
    [Ncoord,Nconec] = leINP(INPfile);
 
%      Ncoord(:,2) = 10*Ncoord(:,2);   % Deletar isso.     

    Nnos = size(Ncoord,1); 

% Condições de contorno 
 
%     CCviga;
    CCVaso;
         
%% Processamento  

% Declaração inicial de Variaveis

Kglobal = zeros(ngl*Nnos);
F = zeros(ngl*Nnos,1);

% Reorganiza a matriz de coordenadas nodais (numeração crescente)
    SNcoord = sortrows(Ncoord);
    Mcc = sortrows(Mcc);
    
% Assembly da matriz de rigidez global
% AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
    Kglobal = AssemblyDaGlobal(Nconec,SNcoord,Kglobal,C);
  
% Assembly do vetor de forças

for i=1:size(Mfn,1)  
   F(2*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2); 
end
 
% Eliminação de linhas/colunas
 
[Kdel,Fdel] = constringeK (Kglobal,F,Mcc,ngl);
 
 % Calculo dos deslocamentos
 
 Udel = Kdel  \ Fdel ;
 
 %% Pós processamento
% AQUI ATUALIZAR PARA O GL
% Reconstruindo o vetor de deslocamentos
   Ufinal = Udel;
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
%     posT6;



%% Problema Viga

%     Vuy = deslocLinhaNeutra(SNcoord,Uorg);
%     Comparacao_Viga;

%% Problema Vaso Pressao

MDef = Def_Axis_TriQuad(Nconec,SNcoord,Ufinal);
S_Axis = Tensao_Axis_TriQuad(MDef,C);
      
   