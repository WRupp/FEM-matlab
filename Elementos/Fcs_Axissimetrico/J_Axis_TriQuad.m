function [J] = J_Axis_TriQuad(e1,e2,R,Z)
	% Calcula o Jacobiano para um elemento Triangular Quadratico no caso
	% axissimetrico

	% R é o vetor coluna de coordenadas nodais r
	% Z é o vetor coluna de coordenadas nodais z

    
    % Concatenacao da posicao    
    RZ = [R Z];
	%Derivadas das funcoes de forma
	Psi = Derivadas_Axis_TriQuad(e1,e2);
    % Jacobiana
	J = Psi*RZ; 

end