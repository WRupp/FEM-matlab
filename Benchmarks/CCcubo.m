
% h = 0;  % altura do solido

f = 100 ; % forca por no - aplicada no nó

caminhoInput = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Benchmarks\Corpo de Prova\';
coordNome = 'CoordenadasNodais.txt';
conecNome = 'Conectividade.txt';

lecoord = dlmread ([caminhoInput coordNome]);
leconec = dlmread ([caminhoInput conecNome]);

Ncoord(:,1) = lecoord(:,1);
Ncoord(:,2:4) = lecoord(:,4:6);


Nconec(:,1:9) = leconec(:,11:end);

SetBaixo = NodePosZFinder(Ncoord,0);
SetFundo = NodePosYFinder(Ncoord,0);
SetEsq = NodePosFinder(Ncoord,0);
SetDir = NodePosFinder(Ncoord,64.642374511866000);


% Criando o set de CC

Mcc = set2Mcc( SetBaixo,0,3,[]);
Mcc = set2Mcc( SetFundo,0,2,Mcc);
Mcc = set2Mcc( SetEsq,0,1,Mcc);

% Criando o set de Forcas

Mfn = set2Mcc( SetDir, f, 2,[]); 
