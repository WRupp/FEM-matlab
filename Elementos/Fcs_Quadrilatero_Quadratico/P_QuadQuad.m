function P = P_QuadQuad(e1,e2,X,Y,C)
	% Calcula o polinomio a ser integrado para o elemento axissimetrico Triangular Quadratico.

	% 

	B = B_QuadQuad(e1,e2,X,Y);

	J = J_QuadQuad(e1,e2,X,Y);	

	P =  transpose(B) * C * B * det(J);


end