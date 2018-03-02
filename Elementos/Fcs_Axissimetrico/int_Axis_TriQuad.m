function Ke = int_Axis_TriQuad (R,Z,C)
	% Realiza a integracao numerica do elemento e entrega a matriz de Rigidez elementar
	% para o modelo Axissimetrico Triangular Quadratico

 np  = 3;
    % Posicao dos pontos
 e = [2/3 1/6;
      1/6 1/6;
      1/6 2/3];
    % Peso
 W(1:np) = 1/3;
 
    Ke = zeros (12);

	for j = 1 : np
    	e1 = e(j,1);
    	e2 = e(j,2);

    % Polinomio a ser integrado.
    P = P_Axis_TriQuad(e1,e2,R,Z,C);	
                                   
 	Ke = Ke + P * W(j); 

 	end