function Ke = Ketp (X,Y,Cd)
	% Montagem da matriz tangente do elemento

	Ae = Atp(X,Y);
	Be = Btp(X,Y); 
    
    Ke = Ae * (Be'*Cd*Be);
end