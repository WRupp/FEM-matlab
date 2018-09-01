% Cï¿½digos para FEM Linear Elï¿½stico - Pequenas Deformacoes
% Fevereiro / 2018
% Wagner Rupp


clear; close all;

% Determina e adiciona todas as subfolders
    folder = fileparts(which(mfilename));
    addpath(genpath(folder));

%% Definiï¿½ï¿½o dos arquivos de entrada e saida

%Input

  % caminhoInput = '\Benchmarks\Vaso de Pressao\';
%   inpNome = 'Job-1.inp';
    caminhoInput =  [folder '\Benchmarks\Viga\' ];
    inpNome = 'Viguinha.inp';

%Output
    caminhoOutput = [folder '\Arquivos_Saída\' ];
    Unome = 'Deslocamentos_Nodais.txt';
    Tnome = 'Tensao_elemento.txt';
    Defnome =  'Desformacao_elemento.txt';

%Full path
    INPfile = [caminhoInput inpNome];


%% Definiï¿½ï¿½o do material
% Definir os valores das constantes do material

    E = 2e5;
    v = 0.3;

%% Definição o tipo de simulação 
% Aqui calcula a matriz de rigidez do material
% Escolher o tipo adequado de simulação - Comentar todos os outros

disp('Verificar dentro da rotina do Assembly da global se o caso está consistente')

% Estado Plano de Deformacao
    % C = Cepd(E,v); 

% Estado Plano de Tensao
    C = Cept(E,v); 

% Axissimetrico
    % C = Caxis(E,v);  

% 3D
    % C = C3D_lame(lambda,mu);
    % C = C3D (E,v);

%% Definiï¿½ï¿½es do tipo de Malha/Elemento

    ngl=2;          % Numero de Graus de Liberdade por nï¿½
    Dim =2;         % Dimensao do problema

    %Ncoord - Matriz de Posicoes nodais. A primeira coluna é a numeracao
    %Nconec - Matriz de Conectividade. A primeira coluna é a numeracao
    
    % Le a malha de um arquivo .inp expecificado
    [Ncoord,Nconec] = leINP(INPfile);
    
    
%% Condiï¿½ï¿½es de contorno - Carrega as condicoes para cada caso

    % Mcc - matriz de condicoes de contorno -> Nos com deslocamento
    % preescrito
    
    % Mfn - Matriz de forças nodais -> Nós com forças nodais

    
    % EXEMPLOS
    
% Script que evoca as CC para o caso da Viga
    CCviga; 
% Script que evoca as CC para o caso do Vaso de Pressao
% 	CCVaso;   
%Script que evoca as CC para corpo de prova 3D sob tracao
%   CCcubo; 
%   CCcubinho;


%% Processamento

% Ordena por nï¿½ as matrizes
    SNcoord = sortrows(Ncoord);
    Mcc = sortrows(Mcc);
    Mfn = sortrows(Mfn);

% Calcula a quantidade de nos da malha
    Nnos = size(SNcoord,1);

% Declaraï¿½ï¿½o inicial de Variaveis

    Kglobal = sparse(ngl*Nnos,ngl*Nnos); %Kglobal = zeros(ngl*Nnos);
    Fglobal = zeros(ngl*Nnos,1);

% Assembly da matriz de rigidez global
    % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
    Kglobal = AssemblyDaGlobal(Nconec,SNcoord,Kglobal,Dim,ngl,C);

% Assembly do vetor de forï¿½as

    %  Fglobal = AssemblyForcas(SetEsq,SNcoord,Nconec);

    for i=1:size(Mfn,1)
       Fglobal(ngl*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2);
    end

% Aplicacao das Condicoes de Contorno - Substitui linhas/colunas dos GL

    [Kglobal,Fglobal] = AplicaCC (Kglobal,Fglobal,Mcc,ngl);

% Calculo dos deslocamentos

    U = Kglobal  \ Fglobal ;

% Repoe as linhas/Colunas Eliminadas e calcula as Reaï¿½oes nos apoios

    %   [Fglobal,Kglobal] = calcReacoes(Kglobal,Fglobal,U,salvaEq);

% Calculo das Reacoes
    %     Ffinal = Kglobal*Ufinal; % Nï¿½o ï¿½ a maneira melhor mas ï¿½ simples.

 %% Pï¿½s processamento

% Organiza o vetor de deslocamentos por no
    Uorg = organizaU(U,ngl,Nnos);

% Coordenadas nodais deslocadas
    DefNcoord = defCoord(SNcoord,Uorg);

 

%% Problema Viga

%  Vuy = deslocLinhaNeutra(SNcoord,Uorg);
%     Comparacao_Viga;
    VisualizaViga

%% Problema Vaso Pressao

%     MDef = Def_Axis_TriQuad(Nconec,SNcoord,U);
%     S_Axis = Tensao_Axis_TriQuad(MDef,C);
%
%     VisualizaVaso;

%% Problema Corpo de Prova

%     PlotHex8(SNcoord,Nconec,'k');
%     PlotHex8(DefNcoord,Nconec,'b');

%     plotNodesSet(DefNcoord,SNcoord(:,1));

%% End
