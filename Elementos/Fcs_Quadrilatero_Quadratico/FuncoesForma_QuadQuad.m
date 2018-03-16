function  Phi = FuncoesForma_QuadQuad(e1,e2)

% Calcula os valores das funcoes de forma para o ponto (e1,e2)

Phi(1) = 1/4 * e2 * (1-e2) * e1  * (1-e1);
Phi(2) = 1/4 * e2 * (1-e2) * e1  * (1+e1);
Phi(3) = 1/4 * e2 * (1+e2) * e1  * (1+e1);
Phi(4) = 1/4 * e2 * (1+e2) * e1  * (1-e1);

Phi(5) = 1/2 *  (1-e1)  *  (1+e1)  *  (1-e2)  ;
Phi(6) = 1/2 *  (1+e1)  *  (1+e2)  *  (1-e2)  ;
Phi(7) = 1/2 *  (1-e1)  *  (1+e1)  *  (1+e2)  ;
Phi(8) = 1/2 *  (1-e1)  *  (1+e2)  *  (1-e2)  ;

Phi(9) = (1-e1) * (1+e1) * (1-e2) * (1+e2);


end