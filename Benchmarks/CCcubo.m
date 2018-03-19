
h = 1;  % altura do solido

f = 100 ; % forca por no - aplicada no nó


SetBaixo = NodePosYFinder(Ncoord,0);
SetCima = NodePosYFinder(Ncoord,h); 

% SetMeio = NodePosFinder(Ncoord,posMeio);

% Criando o set de CC

Mcc = set2Mcc( SetBaixo,0,2,[]);
Mcc = set2Mcc( SetBaixo,0,3,Mcc);

% Criando o set de Forcas

Mfn = set2Mcc( SetCima, f, 2,[]); 
