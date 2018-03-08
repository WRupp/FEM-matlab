% Condicoes de contorno para o problema de vaso de pressao

 Pressao = 2.5; % MPa
 r0 = 50+difR ; % mm
 h = 5;
 nElemFEsq = 10; % Numero de elementos da face esquerda
 
 Forca = 2*pi*h*r0 * Pressao;
 
 
 
 f = (Forca / nElemFEsq )/4 ; 
 
% Alguns sets 

SetEsq = NodePosFinder(SNcoord,r0); 
SetDir = NodePosFinder(SNcoord,r0+5); 

SetBaixo = NodePosYFinder(SNcoord,0);
SetCima = NodePosYFinder(SNcoord,5); 

SetI = setdiff(SetEsq,SetCima);
SetInternos = setdiff(SetI,SetBaixo);
SetExternos = [ intersect(SetEsq,SetCima) ; intersect(SetEsq,SetBaixo) ];

% Condicao de forca consistente

% Mfn = set2Mcc( SetInternos, 2*f, 1,[]); 
% Mfn = set2Mcc( SetExternos, f  , 1,Mfn); 
Mfn = set2Mcc( SetEsq, Pressao, 1,[]); 

% Condicao de deslocamento
Mcc = set2Mcc( SetBaixo,0,2,[]);
Mcc = set2Mcc( SetCima,0,2,Mcc);
