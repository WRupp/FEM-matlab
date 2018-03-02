function [J] = J_TriQuad(e1,e2,X,Y)
	% Calcula a matriz e o determinante da matriz jacobiana nos pontos
	% e1 e e2 ( ou \epsilon e \eta)
	% X é o vetor coluna de coordenadas nodais x
	% Y é o vetor coluna de coordenadas nodais y
    % Definicao da Jacobiana

	%J(1,1) = Psi(1,:)*X; 
	%J(1,2) = Psi(2,:)*X;

	%J(2,1) = N(1,:)*Y;
	%J(2,2) = N(2,:)*Y;
    
    % Concatenacao da posicao    
    Z = [X Y];
	%Derivadas das funcoes de forma
	Psi = Derivadas_Axis_TriQuad(e1,e2);
    % Jacobiana
	J = Psi*Z;
    
end