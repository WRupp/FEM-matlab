function []=plotNodes(SNcoord,flagCor)   
% plota os nós 2D de acordo com a string flagCor. 
 
    for i=1:size(SNcoord,1)
    plot(SNcoord(i,2),SNcoord(i,3),flagCor);           
    end   
end
    
