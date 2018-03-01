function []=plotDefIndefT6(SNcoord, Nconec,DefNcoor)

    figure;
    hold on; axis equal;   
 
%     plotNodes(SNcoord,'bo');
    plotT6(SNcoord, Nconec,'k')
    
%     plotNodes(DefNcoor,'ro');
    plotT6(DefNcoor, Nconec,'b')

end