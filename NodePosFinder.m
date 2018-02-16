function Set = NodePosFinder(Ncoord,Posx)
% Encontra os nós que tem determinada posição e coloca no conjunto Set
% ideia : expandir para x e y

Set = [];

    for i = 1:size(Ncoord,1)
        if Ncoord(i,2)==Posx(1)
            Set = [Set ; Ncoord(i,1)];  
        end
    end
end