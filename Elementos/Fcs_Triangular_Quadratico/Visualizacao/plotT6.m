function []=plotT6(SNcoord, Nconec,flagCor)
% Plota os elementos a partir de uma matriz de coordenadas nodais e a
% matriz de conectividade. 2D

SNcoord = sortrows(SNcoord); % organiza em numeracao crescente

hold on; 

    for k = 1:size(Nconec,1)
       X=[]; 
       Z=[];
         % Pega a numeração dos nós do elemento e sua posição
        for j = 1:size(Nconec,2)-1 
        X(j,:) = [ SNcoord( Nconec(k,1+j),2) SNcoord( Nconec(k,1+j),3)];        
        end
        
        Z(1,:) = X(1,:);
        Z(2,:) = X(4,:);
        Z(3,:) = X(2,:);
        Z(4,:) = X(5,:);
        Z(5,:) = X(3,:);
        Z(6,:) = X(6,:);
        
        Z = [ Z ; Z(1,:)];  
               
        plot(Z(:,1),Z(:,2),flagCor);    
    end
end