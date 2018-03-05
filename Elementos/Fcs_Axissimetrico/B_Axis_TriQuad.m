function [B] = B_Axis_TriQuad (e1,e2,R,Z,r)

	J = J_Axis_TriQuad(e1,e2,R,Z);

	Psi = Derivadas_Axis_TriQuad(e1,e2);

	% Vetor Derivadas em r e z

	Deriv = J \ Psi;

	% termos Ur / r 
	Phi = vetorFuncoesForma(e1,e2);
	% r = Phi*R;	 
	vr = Phi / r ;

	% Assembly do B

	B = [Deriv(1,1) 0 		   Deriv(1,2) 0          Deriv(1,3) 0          Deriv(1,4) 0 		 Deriv(1,5) 0 		   Deriv(1,6) 0 ;
	     vr(1) 		0 		   vr(2)      0          vr(3)      0          vr(4)      0 		 vr(5)      0 		   vr(6)      0 ; 
		 0   		Deriv(2,1) 0          Deriv(2,2) 0          Deriv(2,3) 0          Deriv(2,4) 0 			Deriv(2,5) 0          Deriv(2,6);
		 Deriv(2,1) Deriv(1,1) Deriv(2,2) Deriv(1,2) Deriv(2,3) Deriv(1,3) Deriv(2,4) Deriv(1,4) Deriv(2,5) Deriv(1,5) Deriv(2,6) Deriv(1,6)];

end