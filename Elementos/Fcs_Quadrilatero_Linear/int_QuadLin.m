function Ke = int_QuadLin (X,Y,C)
	% Realiza a integracao numerica do elemento e entrega a matriz de Rigidez elementar
	% para o modelo Quadrilatero Linear

    np  = 4;
    % Posicao dos pontos
    Ponto = 1 / sqrt(3);

     e = [-Ponto -Ponto;
          +Ponto -Ponto;
          +Ponto +Ponto;
          -Ponto +Ponto];
    % Peso
    W(1:np) = 1;
 
    % Calculo de Ke
    Ke = zeros (4*2);

    % Loop nos pontos de Gauss
for j = 1 : np
    	e1 = e(j,1);
    	e2 = e(j,2);

    % Polinomio a ser integrado.
    P = P_QuadLin(e1,e2,X,Y,C);	
                                   
 	Ke = Ke + P * W(j); 
    
end
end