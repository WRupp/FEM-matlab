% Posi

% Plota os elementos Hexaedrico 8 nós


S = size(Nconec);
figure;
hold on;
axis equal;

for k = 1 : Nconec
    for i = 1 : S(1)

        side1 = SNcoord(Nconec(i,2:5),2:4);
        side2 = SNcoord(Nconec(i,6:9),2:4); 
        side3 = [ SNcoord(Nconec(i,1+1),2:4) ;
                  SNcoord(Nconec(i,5+1),2:4);
                  SNcoord(Nconec(i,8+1),2:4);
                  SNcoord(Nconec(i,4+1),2:4)];
              
        side4 = [ SNcoord(Nconec(i,2+1),2:4) ;
                  SNcoord(Nconec(i,6+1),2:4);
                  SNcoord(Nconec(i,7+1),2:4);
                  SNcoord(Nconec(i,3+1),2:4)];            
        
           
        fill3(side1(:,1),side1(:,2),side1(:,3),'w');
        fill3(side2(:,1),side2(:,2),side2(:,3),'w');
        fill3(side3(:,1),side3(:,2),side3(:,3),'w');
        fill3(side4(:,1),side4(:,2),side4(:,3),'w');
        
        



    end   
    
end