function [B] = B_QuadLin (e1,e2,X,Y)
	
	
	% Calculo do Jacobiano

	J = J_QuadLin(e1,e2,X,Y);

	% Derivadas em termos de e1 e e2

	Psi = Derivadas_QuadLin(e1,e2);

	% Derivadas em termos de x e y

	Deriv = J \ Psi;

	% Montagem da matriz B

	B = [Deriv(1,1) 0 		   Deriv(1,2) 0          Deriv(1,3) 0          Deriv(1,4)  0;	    
		 0   		Deriv(2,1) 0          Deriv(2,2) 0          Deriv(2,3) 0           Deriv(2,4) ;
		 Deriv(2,1) Deriv(1,1) Deriv(2,2) Deriv(1,2) Deriv(2,3) Deriv(1,3) Deriv(2,4)  Deriv(1,4)];

end