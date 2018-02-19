function Mcc = set2Mcc(set,valorU,gl,Mcc)
   % Pega o conjunto de nos em set e adiciona estes à matriz de condições
   % de contorno com o valor U no grau de liberdade gl
   
   mc = zeros(size(set, 1),3);
   
   mc(:,1)=set;
   mc(:,2)=valorU;
   mc(:,3)=gl;
   
   Mcc = [Mcc ; mc];

end