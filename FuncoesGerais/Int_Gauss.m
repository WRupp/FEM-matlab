function I = Int_Gauss (P,pg,W,varargin)
	% Realiza a integraçao do expressao de P, dados os pontos de Gauss pg.
	% pg deve ser ser escrito da forma  [pg1x pg1y pg1z
	%                                    pg2x pg2y pg2z ... ]
	% O tamanho dos vetor pesos W deve ser igual ao numero de pontos

	npg = size(pg,1); % Número de pontos de Gauss



	for i = 1 : npg
		e = pg(i,:);

		feval(P,e,)

		I = I + f * W(i);


    end 
end