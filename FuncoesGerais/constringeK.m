function [Kdel,Fdel] = constringeK (Kglobal,F,Mcc,GLpNo)


     Kdel = Kglobal;
     Fdel = F;

     for i=0:size(Mcc,1)-1

     Nno = Mcc(end-i,1);
     dof = Mcc(end-i,3);

     Kdel(GLpNo*(Nno-1) + dof,:)=[];
     Kdel(:,GLpNo*(Nno-1) + dof)=[];

     Fdel(GLpNo*(Nno-1) + dof) = [];

     end
 
end