function []=plotMap(Map,SNcoord, Nconec)
% Plota o colormap do Vetor Map nos elementos a partir de uma matriz de coordenadas nodais e a
% matriz de conectividade. 2D

% SNcoord = sortrows(SNcoord); % organiza em numeracao crescente
figure;
hold on; 
axis equal;
colormap jet;

    for k = 1:size(Nconec,1)
       X=[]; Y=[];
         % Pega a numeração dos nós do elemento e sua posição
        for j = 1:size(Nconec,2)-1   
        n = Nconec(k,1+j);
        X = [ X ; SNcoord(n,2)];
        Y = [ Y ; SNcoord(n,3)];     
        end
        X = [X; X(1)];
        Y = [Y; Y(1)];

        patch(X,Y,Map(k));    
    end
end

