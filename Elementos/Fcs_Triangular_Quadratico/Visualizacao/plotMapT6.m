function []=plotMapT6(Map,SNcoord, Nconec)
% Plota o colormap do Vetor Map nos elementos a partir de uma matriz de coordenadas nodais e a
% matriz de conectividade. 2D

% SNcoord = sortrows(SNcoord); % organiza em numeracao crescente
figure;
hold on; 
axis equal;
colormap jet;

% Prealocando
        
       Z=zeros(6,2); 

    for k = 1:size(Nconec,1)

         % Pega a numeração dos nós do elemento e sua posição
        X=zeros(6,2);
        for i = 1:size(Nconec,2)-1 
        X(i,:) = [SNcoord( Nconec(k,1+i),2) SNcoord( Nconec(k,1+i),3)] ;        
        end
        
        % Reorganiza os nós por suas conexoes
        Z(1,:) = X(1,:);
        Z(2,:) = X(4,:);
        Z(3,:) = X(2,:);
        Z(4,:) = X(5,:);
        Z(5,:) = X(3,:);
        Z(6,:) = X(6,:);  
        
        fill(Z(:,1),Z(:,2),Map(k)); 
      
    end      
end

