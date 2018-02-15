function B = Betp(X,Y)
	% Script para geração das Matrizes de um elemento Triangular Plano.
	%Entrega a matriz de derivadas B do elemento dada as posições nodais. Seguir a numeração anti-horária.

%X = [1 3 2];
%Y = [1 2 1];

a = X(2)-X(1);
b = X(3)-X(1);
c = Y(2)-Y(1);
d = Y(3)-Y(1);

detJ = a*d-b*c;

if detJ<=0
    error('Elemento degenerado');
end

J = [a b; c d];
invJ = 1/detJ * [ d -b; -c a];

dN1dE = [ -1 -1];
dN2dE = [ 1 0];
dN3dE = [ 0 1];

dN1dx = invJ' * dN1dE';
dN2dx = invJ' * dN2dE';
dN3dx = invJ' * dN3dE';


% Montando a Matriz de Derivadas B

B = [ dN1dx(1) 0		dN2dx(1) 0		  dN3dx(1) 	0		;
	  0		   dN1dx(2)	0		 dN2dx(2) 0			dN3dx(2);
	  dN1dx(1) dN1dx(2) dN2dx(1) dN2dx(2) dN3dx(1)	dN3dx(2)];
end







