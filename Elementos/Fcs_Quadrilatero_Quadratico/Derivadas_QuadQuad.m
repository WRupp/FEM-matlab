function Psi = Derivadas_QuadQuad (e1,e2)
	% A matriz de derivadas das funcoes de forma. Ver pg 259 da apostila de FEM
	% A coluna indica o numero da funcao e a linha indica a variavel a qual a fc foi derivada

	% Derivada em e1

	Psi(1,1) = 1/4 * e2 * (1-e2) * ( (1)*(1-e1)+(e1)*(-1));
	Psi(1,2) = 1/4 * e2 * (1-e2) * ( (1)*(1+e1)+(e1)*(+1));
	Psi(1,3) = 1/4 * e2 * (1+e2) * ( (1)*(1+e1)+(e1)*(+1));
	Psi(1,4) = 1/4 * e2 * (1+e2) * ( (1)*(1-e1)+(e1)*(-1));

	Psi(1,5) = 1/2 * (1-e2) * ( (-1)*(1+e1)+(1-e1)*(1));
	Psi(1,6) = 1/2 * (1-e2) * ( (+1)*(1+e2));
	Psi(1,7) = 1/2 * (1+e2) * ( (-1)*(1+e1)+(1-e1)*(1));
	Psi(1,8) = 1/2 * (1-e2) * ( (-1)*(1+e2));

	Psi(1,9) = (1-e2)*(1+e2)*((-1)*(1+e1)+(1-e1)*(1));

	% Derivada em e2

	Psi(2,1) = 1/4 * e1 * (1-e1) * ( (1)*(1-e2)+(e2)*(-1));
	Psi(2,2) = 1/4 * e1 * (1+e1) * ( (1)*(1-e2)+(e2)*(-1));
	Psi(2,3) = 1/4 * e1 * (1+e1) * ( (1)*(1+e2)+(e2)*(1));
	Psi(2,4) = 1/4 * e1 * (1-e1) * ( (1)*(1+e2)+(e2)*(1));

	Psi(2,5) = 1/2 * (1-e1) * ( (-1)*(1+e1));
	Psi(2,6) = 1/2 * (1+e1) * ( (-1)*(1+e2)+(1-e2)*(1));
	Psi(2,7) = 1/2 * (1-e1) * ( (+1)*(1+e2));
	Psi(2,8) = 1/2 * (1-e1) * ( (-1)*(1+e2)+(1-e2)*(1));

	Psi(2,9) = (1-e1)*(1+e1)*((-1)*(1+e2)+(1-e2)*(1));

end