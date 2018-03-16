function Psi = Derivadas_QuadLin (e1,e2)
	% A matriz de derivadas das funcoes de forma. Ver pg 259 da apostila de FEM
	% A coluna indica o numero da funcao e a linha indica a variavel a qual a fc foi derivada

	Psi(1,1) = 1/4 * (-1) * (1-e2);
	Psi(1,2) = 1/4 * (+1) * (1-e2);
	Psi(1,3) = 1/4 * (+1) * (1+e2);
	Psi(1,4) = 1/4 * (-1) * (1+e2);

	Psi(2,1) = 1/4 * (1-e1) * (-1);
	Psi(2,2) = 1/4 * (1+e1) * (-1);
	Psi(2,3) = 1/4 * (1+e1) * (+1);
	Psi(2,4) = 1/4 * (1-e1) * (+1);


end