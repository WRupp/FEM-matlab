function Set = NodePosYFinder(Ncoord,Posy)
% Encontra os n�s que tem determinada posi��o e coloca no conjunto Set
% ideia : expandir para x e y

Set = [];

    for i = 1:size(Ncoord,1)
        if Ncoord(i,3)==Posy(1)
            Set = [Set ; Ncoord(i,1)];  
        end
    end
end