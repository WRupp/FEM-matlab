function [Kglobal,Fglobal,salvaEq] = AplicaCC (Kglobal,Fglobal,Mcc,GLpNo)
    % Aplica as condicoes de contorno nos nós, substituido por uma linha
    % de zeros, com 1 na diagonal principal
  
     % declaracoes iniciais
     sCC = size(Mcc,1);
     sKg = size(Kglobal,1);
     
     % Vetor para salvar as linhas/colunas substituidas
     salvaEq=zeros(sCC, 1 + sKg);

     for i=0:sCC-1

         Nno = Mcc(end-i,1);
         dof = Mcc(end-i,3);
         nG = GLpNo*(Nno-1) + dof;
         
         salvaEq(1+i,1)=nG;
         salvaEq(1+i,2:end)= Kglobal(nG,:);

         Kglobal(nG,:)=0;
         Kglobal(:,nG)=0;
         Kglobal(nG,nG)=1;

         Fglobal(nG) = Mcc(end-i,2);         
     end
 
end