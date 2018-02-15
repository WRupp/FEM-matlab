function C = Celi (E,v)
	% Entrega a matriz de propriedades materiais para um material
    %elástico linear com modulo de elasticidade E e poisson v.
    % Caso de Estado Plano de deformações

	cte = E/((1+v)*(1-2*v));

	C = cte*[ 1-v	   v        0;
			  v	    (1-v)		0;
			  0			0		(1-2*v)/2];
end		