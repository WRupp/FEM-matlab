function [] = PlotHex8(coordMat,Nconec,colorStr)

% Plota os elementos Hexaedrico 8 nós através


S = size(Nconec);
hold on;
axis equal;

for k = 1 : Nconec
    for i = 1 : S(1)

        side1 = coordMat(Nconec(i,2:5),2:4);    % Lado Esquerdo
        
        side2 = coordMat(Nconec(i,6:9),2:4);    % Lado Direito 
        
        side3 = [ coordMat(Nconec(i,1+1),2:4) ; % Lado Frente
                  coordMat(Nconec(i,5+1),2:4);
                  coordMat(Nconec(i,8+1),2:4);
                  coordMat(Nconec(i,4+1),2:4)];
              
        side4 = [ coordMat(Nconec(i,2+1),2:4) ; % Lado
                  coordMat(Nconec(i,6+1),2:4);
                  coordMat(Nconec(i,7+1),2:4);
                  coordMat(Nconec(i,3+1),2:4)];

        side5 = [ coordMat(Nconec(i,3+1),2:4);
                  coordMat(Nconec(i,4+1),2:4);
                  coordMat(Nconec(i,8+1),2:4);
                  coordMat(Nconec(i,7+1),2:4)];    
              
        side6 = [ coordMat(Nconec(i,2+1),2:4);
                  coordMat(Nconec(i,1+1),2:4);
                  coordMat(Nconec(i,5+1),2:4);
                  coordMat(Nconec(i,6+1),2:4)];             
        
           
        fill3(side1(:,1),side1(:,2),side1(:,3),colorStr,'FaceAlpha',0.05);
        fill3(side2(:,1),side2(:,2),side2(:,3),colorStr,'FaceAlpha',0.05);
        fill3(side3(:,1),side3(:,2),side3(:,3),colorStr,'FaceAlpha',0.05);
        fill3(side4(:,1),side4(:,2),side4(:,3),colorStr,'FaceAlpha',0.05);
        fill3(side5(:,1),side5(:,2),side5(:,3),colorStr,'FaceAlpha',0.05);
        fill3(side6(:,1),side6(:,2),side6(:,3),colorStr,'FaceAlpha',0.05);

    end      
end