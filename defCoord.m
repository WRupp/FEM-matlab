function DefNcoor = defCoord(SNcoord,Ufinal)
% Atualiza as coordenadas nodais ap�s a deforma��o

S = size(SNcoord);
DefNcoor = zeros(S);
    for i=1: S(1)   
        DefNcoor(i,:) = [SNcoord(i,1) SNcoord(i,2)+Ufinal(2*i-1) SNcoord(i,3)+Ufinal(2*i)];        
    end 

end
