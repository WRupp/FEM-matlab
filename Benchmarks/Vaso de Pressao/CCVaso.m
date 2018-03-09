% Condicoes de contorno para o problema de vaso de pressao
 load('Ncoord.mat','Ncoord','Nconec');
    
 difR = 100;
 Ncoord(:,2)=Ncoord(:,2)+difR;

 Pressao = 2.5; % MPa
 r0 = 50+difR ; % mm
 h = 5;
 t = 5;
 Lelemento = 0.5; % Numero de elementos da face esquerda
 
 Forca = 2*pi*r0 * Pressao;
 
 Sigma_zz_Analitico = Pressao * r0 / (2 * t) 
 
 f = (Forca * Lelemento )/3 ; 
 
% Alguns sets 

SetEsq = NodePosFinder(Ncoord,r0); 
SetDir = NodePosFinder(Ncoord,r0+t); 

SetBaixo = NodePosYFinder(Ncoord,0);
SetCima = NodePosYFinder(Ncoord,t); 

SetI = setdiff(SetEsq,SetCima);
SetInternos = setdiff(SetI,SetBaixo);
SetExternos = [ intersect(SetEsq,SetCima) ; intersect(SetEsq,SetBaixo) ];

% Condicao de forca consistente

Mfn = set2Mcc( SetInternos, 2*f, 1,[]); 
Mfn = set2Mcc( SetExternos, f  , 1,Mfn); 
% Mfn = set2Mcc( SetEsq, Pressao, 1,[]); 

% Condicao de deslocamento
Mcc = set2Mcc( SetBaixo,0,2,[]);
Mcc = set2Mcc( SetCima,0,2,Mcc);
