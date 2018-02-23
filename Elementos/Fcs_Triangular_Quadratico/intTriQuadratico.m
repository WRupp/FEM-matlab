function [Ke] = intTriQuadratico (X,Y,Cd)
% Ver o funcionamento e tabelas de integração na seção 9.8 da apostila de finitos
% ou na pagina 267 do Cook (concepts and applications ...)

% Para um elemento triangular quadrático é necessário apenas um ponto de integração.
% na posição 

 e1 = 1/3;
 e2 = 1/3;

 %  peso
 Wj = 1;

 % a integracao eh feita apenas em um ponto de integracao (pode ser alterado)
 np  = 1;

 % A integracao 
    Ke = zeros(12) ; % hardcoded

 	for j = 1 : np
    J = J_TriQuad(e1,e2,X,Y);
    detJ = det( J )
 	B = Btriquad(e1,e2,J);
 	P = B' * Cd * B;
 	Ke = Ke + P * detJ * Wj;
 	end

 	Ke = 1/2 * Ke;

 end