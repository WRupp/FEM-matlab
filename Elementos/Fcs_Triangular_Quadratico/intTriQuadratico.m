function [Ke] = intTriQuadratico (X,Y,Cd)
% Ver o funcionamento e tabelas de integração na seção 9.8 da apostila de finitos
% ou na pagina 267 do Cook (concepts and applications ...)

% Para um elemento triangular quadrático é necessário apenas um ponto de integração.
% na posição 

 e1 = 1/3;
 e2 = 1/3;

 %  peso
 W = 1;

 % a integracao e feita apenas em um ponto de integracao (pode ser alterado)
    np  = 1;

 % A integracao 
    Ke = zeros(12) ; % hardcoded

 	for j = 1 : np
    J = J_TriQuad(e1,e2,X,Y);
 	B = Btriquad(e1,e2,J);
    
 	Polinomio = transpose(B) * Cd * B;
 	Ke = Ke + Polinomio *(1/2* det(J)) * W(j); % Aqui o termo de 1/2 deve ser alterado
                                  % Se outro elemento for utilizado
%     Area =   (1/2* det(J))  ;                        
%     Ke_sym = 1/2*(transpose(Ke) + Ke);
%     dif = Ke - Ke_sym;     
 	end

 end