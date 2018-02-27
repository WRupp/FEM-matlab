function C = Cept (E,v)
	% Calcula a matriz de elasticidade C para o caso de estado plano de tensoes

	cte = E/(1-v^2);

	C  = [1 v 0 ;
		  v 1 0 ;
		  0 0 (1-v)/2]
end 