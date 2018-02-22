function [J] = Jacobiana(e1,e2,X,Y)
	% Calcula a matriz e o determinante da matriz jacobiana nos pontos
	% e1 e e2 ( ou \epsilon e \eta)
	% X é o vetor coluna de coordenadas nodais x
	% Y é o vetor coluna de coordenadas nodais y

	%Derivadas das funcoes de forma

	N(1,1) = 4*e1+4*e2-1;
	N(2,1) = 4*e1 -1 ;
	N(3,1) = 0 ;
	N(4,1) = 4*(1-2*e1-2*e2);
	N(5,1) = 4*e2;
	N(6,1) = -4*e2;

	N(1,2) = 4*e1+4*e2-3;
	N(2,2) = 0;
	N(3,2) = 4*e2-1;
	N(4,2) = -4*e1;
	N(5,2) = 4*e1;
	N(6,2) = 4*(1-e1-2*e2);

	% Definicao da Jacobiana

	J(1,1) = N(:,1)'*X; 
	J(1,2) = N(:,2)'*X;
	J(2,1) = N(:,1)'*Y;
	J(2,2) = N(:,2)'*Y;

	% Calculo do determinante

	%detJ = J(1,1)*J(2,2) - J(1,2)*J(2,1);



end