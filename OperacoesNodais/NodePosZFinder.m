function Set = NodePosZFinder(Ncoord,Posy)
% Encontra os nós que tem determinada posição e coloca no conjunto Set
% ideia : expandir para x e y

Set = [];

    for i = 1:size(Ncoord,1)
        if Ncoord(i,4)==Posy(1)
            Set = [Set ; Ncoord(i,1)];  
        end
    end
end