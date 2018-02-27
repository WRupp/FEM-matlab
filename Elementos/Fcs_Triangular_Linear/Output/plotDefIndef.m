function []=plotDefIndef(SNcoord, Nconec,DefNcoor)

    figure;
    hold on; axis equal;   
 
%     plotNodes(SNcoord,'bo');
    plotElements(SNcoord, Nconec,'k')
    
%     plotNodes(DefNcoor,'ro');
    plotElements(DefNcoor, Nconec,'m')

end