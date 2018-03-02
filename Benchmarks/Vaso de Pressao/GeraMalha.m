% gera malha
clear;

cont = 1 ;
r0 = 50; %mm

%Loop em z

for i= 0: 0.5 : 5
   % Loop em r
   for j = 0:0.5:5 
   Ncoord(cont,1) =cont;    
   Ncoord(cont,2) = r0+j;
   Ncoord(cont,3) = i; 
   cont = cont + 1;
   end   
end

scatter(Ncoord(:,2),Ncoord(:,3));

