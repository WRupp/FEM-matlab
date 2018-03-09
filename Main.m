% C�digos para FEM Linear El�stico - Pequenas Deformacoes
% Fevereiro / 2018
% Wagner Rupp


clear; close all;
% Determina e adiciona todas as subfolders
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

%% Defini��o dos arquivos de entrada e saida

%Input
% caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\Resultados Abaqus\';
% inpNome = 'Viguinha.inp';
caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Benchmarks\Vaso de Pressao\';
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

% C = Cepd(E,v); % Estado Plano de Tensao
% C = Cept(E,v); % Estado Plano de 
C = Caxis(E,v);

%% Defini��es do tipo de Malha/Elemento

ngl=2;          % Numero de Graus de Liberdade por n�
Dim =2;         % Dimensao do problema

%% Defini��o da Malha

    % Le a malha de um arquivo .inp expecificado   
    %      [Ncoord,Nconec] = leINP(INPfile);

% Condi��es de contorno - Carrega as condicoes para cada caso
 
%     CCviga; % Script que evoca as CC para o caso da Viga
    CCVaso;   % Script que evoca as CC para o caso do Vaso de Pressao
    
    % Ordena por n� as matrizes
    SNcoord = sortrows(Ncoord);
    Mcc = sortrows(Mcc);
    Mfn = sortrows(Mfn);  
    
    % Calcula a quantidade de nos da malha
    Nnos = size(SNcoord,1);
         
%% Processamento  

% Declara��o inicial de Variaveis

    Kglobal = sparse(ngl*Nnos,ngl*Nnos); %Kglobal = zeros(ngl*Nnos);
    Fglobal = zeros(ngl*Nnos,1); 
    
% Assembly da matriz de rigidez global
% AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
    Kglobal = AssemblyDaGlobal(Nconec,SNcoord,Kglobal,C);
  
% Assembly do vetor de for�as

%  Fglobal = AssemblyForcas(SetEsq,SNcoord,Nconec);
% 
for i=1:size(Mfn,1)  
   Fglobal(ngl*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2); 
end
 
% Aplicacao das Condicoes de Contorno - Substitui linhas/colunas dos GL
 
[Kglobal,Fglobal,salvaEq] = AplicaCC (Kglobal,Fglobal,Mcc,ngl);

% Calculo dos deslocamentos
 
 U = Kglobal  \ Fglobal ;
 
  % Repoe as linhas/Colunas Eliminadas e calcula as Rea�oes nos apoios
  
%   [Fglobal,Kglobal] = calcReacoes(Kglobal,Fglobal,U,salvaEq);
 
  % Calculo das Reacoes
%     Ffinal = Kglobal*Ufinal; % N�o � a maneira melhor mas � simples.   
 
 %% P�s processamento

 
%    Ufinal = Udel; 

 % Organiza o vetor de deslocamentos por no  
   Uorg = organizaU(U,ngl,Nnos);
   
 % Coordenadas nodais deslocadas
   DefNcoor = defCoord(SNcoord,U);
  

%% Problema Viga

%     Vuy = deslocLinhaNeutra(SNcoord,Uorg);
%     Comparacao_Viga;

%% Problema Vaso Pressao

    MDef = Def_Axis_TriQuad(Nconec,SNcoord,U);
    S_Axis = Tensao_Axis_TriQuad(MDef,C);
    
    VisualizaVaso;


%% End 
      
   

  
     
   