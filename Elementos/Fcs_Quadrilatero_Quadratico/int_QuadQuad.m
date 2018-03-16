function Ke = int_QuadQuad (X,Y,C)
	% Realiza a integracao numerica do elemento e entrega a matriz de Rigidez elementar
	% para o modelo Quadrilatero Quadratico Q9

    np  = 5;
    % Posicao dos pontos
    Ponto =  sqrt(0.6);


     e = [-Ponto -Ponto;
          +Ponto -Ponto;
          +Ponto +Ponto;
          -Ponto +Ponto;
          0       0    ];
    % Peso
    W(1:4) = 5/9;
    W(5) = 8/9;
 
    % Calculo de Ke
    Ke = zeros (9*2);

    % Loop nos pontos de Gauss
for j = 1 : np
    	e1 = e(j,1);
    	e2 = e(j,2);

    % Polinomio a ser integrado.
    P = P_QuadQuad(e1,e2,X,Y,C);	
                                   
 	Ke = Ke + P * W(j); 
    
end
end