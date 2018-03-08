% Códigos para FEM Linear Elástico - Pequenas Deformacoes
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
inpNome = 'Job-1.inp';
    
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

% C = Cepd(E,v); % Estado Plano de Tensao
% C = Cept(E,v); % Estado Plano de 
C = Caxis(E,v);

%% Definições do tipo de Malha/Elemento

ngl=2;          % Numero de Graus de Liberdade por nó
Dim =2;         % Dimensao do problema

%% Definição da Malha

    % Le a malha de um arquivo .inp expecificado   
    [Ncoord,Nconec] = leINP(INPfile);
    
    
    difR=100;
    Ncoord(:,2)=Ncoord(:,2)+difR;
 
    % Reorganiza a matriz de coordenadas nodais (numeração crescente)
    SNcoord = sortrows(Ncoord);
    
    % Calcula a quantidade de nos da malha
    Nnos = size(SNcoord,1);

% Condições de contorno 
 
%     CCviga; % Script que evoca as CC para o caso do Vaso de Pressao
    CCVaso;   % Script que evoca as CC para o caso do Vaso de Pressao
    
    % Ordena por nó as 
    Mcc = sortrows(Mcc);
    Mfn = sortrows(Mfn);    
         
%% Processamento  

% Declaração inicial de Variaveis

    Kglobal = zeros(ngl*Nnos);
    F = zeros(ngl*Nnos,1); 
    
% Assembly da matriz de rigidez global
% AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
    Kglobal = AssemblyDaGlobal(Nconec,SNcoord,Kglobal,C);
  
% Assembly do vetor de forças

for i=1:size(Mfn,1)  
   F(ngl*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2); 
end
 
% Eliminação de linhas/colunas
 
[Kdel,Fdel] = constringeK (Kglobal,F,Mcc,ngl);
 
 % Calculo dos deslocamentos
 
 Udel = Kdel  \ Fdel ;
 
 %% Pós processamento

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
  

%% Problema Viga

%     Vuy = deslocLinhaNeutra(SNcoord,Uorg);
%     Comparacao_Viga;

%% Problema Vaso Pressao

    MDef = Def_Axis_TriQuad(Nconec,SNcoord,Ufinal);
    S_Axis = Tensao_Axis_TriQuad(MDef,C);
    
     VisualizaVaso;


%% End 
      
   

  
     
   