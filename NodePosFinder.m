function Set = NodePosFinder(Ncoord,Posx)
% Encontra os n�s que tem determinada posi��o e coloca no conjunto Set
% ideia : expandir para x e y

Set = [];

    for i = 1:size(Ncoord,1)
        if Ncoord(i,2)==Posx(1)
            Set = [Set ; Ncoord(i,1)];  
        end
    end
end