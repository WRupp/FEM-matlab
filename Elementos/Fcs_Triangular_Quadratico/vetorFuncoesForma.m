function  Phi = vetorFuncoesForma(e1,e2)

% Calcula os valores das funcoes de forma para o ponto (e1,e2)

Phi(1) = (1-e1-e2)*(1-2*e1-2*e2);
Phi(2) = e1 * (2*e1-1);
Phi(3) = e2*(2*e2-1);

Phi(4) = 4* e1 * (1-e1-e2);
Phi(5) = 4 * e1 * e2;
Phi(6) = 4 * e2 * (1-e1-e2);

end