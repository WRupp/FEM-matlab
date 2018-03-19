function DefNcoor = defCoord(SNcoord,Ufinal,ngl)
% Atualiza as coordenadas nodais após a deformação

S = size(SNcoord);
DefNcoor = zeros(S);
    for i=1: S(1)
        
        DefNcoor(i,1) =  SNcoord(i,1);
            
        for j = 1 : S(2)-1;
        DefNcoor(i,1+j) = SNcoord(i,1+j) + Ufinal(ngl*i-1) ; 
        end
    end 

end
