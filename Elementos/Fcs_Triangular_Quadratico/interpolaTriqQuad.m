function  x = interpolaTriqQuad(e1,e2,X)
	% determina o valor de uma variavel x no ponto (e1,e2)
	% de acordo com os valores nodais daquele elemento.


N(1) = (1-e1-e2)*(1-2*e1-2*e2);
N(2) = e1 * (2*e1-1);
N(3) = e2*(2*e2-1);

N(4) = 4* e1 * (1-e1-e2);
N(5) = 4 * e1 * e2;
N(6) = 4 * e2 * (1-e1-e2);

x = (N * X)';

end