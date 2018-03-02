function P = P_Axis_TriQuad(e1,e2,R,Z,C)
	% Calcula o polinomio a ser integrado para o elemento axissimetrico Triangular Quadratico.

	% 

	Phi = vetorFuncoesForma(e1,e2);
	r =  Phi*R; % é calculado interpolando os valores nodais

	B = B_Axis_TriQuad(e1,e2,R,Z,r);

	J = J_Axis_TriQuad(e1,e2,R,Z);
	Ji = 1/2 * det(J);

	P = (2*pi* r ) * transpose(B) * C * B * Ji;


end