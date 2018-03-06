% Condicoes de contorno para o problema de vaso de pressao

 Pressao = 10000; % MPa
 r0 = 50 ; % mm
 
% Condicao de forca
SetEsq = NodePosFinder(Ncoord,r0);
f =  Pressao;% / size(SetEsq,1);  % Tem Erro Aqui. Nao seria consistente.


Mfn = set2Mcc( SetEsq,f,1,[]); 

% Condicao de deslocamento
SetBaixo = NodePosYFinder(Ncoord,0);
SetCima = NodePosYFinder(Ncoord,5);
Mcc = set2Mcc( SetBaixo,0,2,[]);
% Mcc = set2Mcc( SetCima,0,2,Mcc);

% Condicao de forca 
% Mfn = set2Mcc( SetCima,-f,2,Mfn); 

