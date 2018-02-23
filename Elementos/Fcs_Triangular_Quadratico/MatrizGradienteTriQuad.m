function Psi = MatrizGradienteTriQuad(e1,e2)
	% A matriz de derivadas das funcoes de forma para o elemento triangular quadrático. Ver pg 259 da apostila de FEM
	% A coluna indica o numero da funcao e a linha indica a variavel a qual a fc foi derivada

	Psi(1,1) = 4*e1+4*e2-3;
	Psi(1,2) = 1 - 4*e1 ;
	Psi(1,3) = 0 ;
	Psi(1,4) = 4*(1 - 2*e1 - e2);
	Psi(1,5) = 4*e2;
	Psi(1,6) = -4*e2;

	Psi(2,1) = 4*e1+4*e2-3;
	Psi(2,2) = 0;
	Psi(2,3) = 1 - 4*e2 ;
	Psi(2,4) = -4*e1;
	Psi(2,5) = 4*e1;
	Psi(2,6) = 4*(1-e1-2*e2);


end