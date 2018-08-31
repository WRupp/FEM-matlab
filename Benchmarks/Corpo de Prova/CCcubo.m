
% h = 0;  % altura do solido

f = 10000 ; % forca por no - aplicada no nó

caminhoInput = 'C:\Users\WAGNER\Documents\GitHub\FEM-matlab\Benchmarks\Corpo de Prova\';
coordNome = 'CoordenadasNodais.txt';
conecNome = 'Conectividade.txt';

lecoord = dlmread ([caminhoInput coordNome]);
leconec = dlmread ([caminhoInput conecNome]);

Ncoord(:,1) = lecoord(:,1);
Ncoord(:,2:4) = lecoord(:,4:6);

% Consertando a malha
for i = 1 : size(Ncoord,1)
    for j = 2 : 4
    if Ncoord(i,j) < 1e-8
      Ncoord(i,j) = 0 ;    
    end    
    end
   if Ncoord(i,2) > 64.5
      Ncoord(i,2) = 65 ;    
    end
end

Ncoord = sortrows(Ncoord);

Nconec(:,1:9) = leconec(:,11:end);

% Construindo os sets por posicao

SetEsq = NodePosFinder(Ncoord,0);
SetDir = NodePosFinder(Ncoord,65);

SetBaixoY = NodePosYFinder(Ncoord,0);
SetBaixoZ = NodePosZFinder(Ncoord,0);

% Criando o set de CC
Mcc = [];
Mcc = set2Mcc( SetEsq,0,1,Mcc);
Mcc = set2Mcc( SetBaixoY,0,2,Mcc);
Mcc = set2Mcc( SetBaixoZ,0,3,Mcc);

Mcc = set2Mcc( SetDir,10,1,Mcc);


% Criando o set de Forcas

Mfn = [];
% Mfn = set2Mcc( SetDir, f, 2,Mfn); 
