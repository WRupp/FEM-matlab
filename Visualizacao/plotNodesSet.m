function [] = plotNodesSet(coordMat,set)
    % Plota os nós de um set.
    for i = 1 :size(set,1)
    s = sprintf('%d',coordMat(set(i)));
%     scatter3(coordMat(set(i),2),coordMat(set(i),3),coordMat(set(i),4),s);
    text(coordMat(set(i),2),coordMat(set(i),3),coordMat(set(i),4),s);
    end
    

    xlabel('x');
    ylabel('y');    
    zlabel('z');

end