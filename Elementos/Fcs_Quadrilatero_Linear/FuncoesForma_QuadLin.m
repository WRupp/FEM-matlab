function  Phi = vetorFuncoesForma(e1,e2)

% Calcula os valores das funcoes de forma para o ponto (e1,e2)

Phi(1) = 1/4 * (1-e1) * (1-e2);
Phi(2) = 1/4 * (1+e1) * (1-e2);
Phi(3) = 1/4 * (1+e1) * (1+e2);
Phi(4) = 1/4 * (1-e1) * (1+e2);

end