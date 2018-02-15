function Kglobal = AssemblyGlobal(Kglobal,NnosElemento,Nconec,Kelem,k)
% Assembly da Matriz de Rigidez Global
% Alguns números 2 foram hardcoded pq o numero de graus de liberdade ngl é
% 2 
% A matriz de conectividade esperada é 
% Nconec = [ Nelem Nno1 Nno2 Nno3];

ngl=2;

 for j = 1 : NnosElemento
   NnoGlobal = Nconec(k,1+j);    
   cont=1;
      for i=1:ngl-1:size(Kelem,1)-3; % -3 PQ
            Kzinho = Kelem (2*i-1:2*i-1+(ngl-1), ...
                            2*j-1:2*j-1+(ngl-1));

            Kglobal(2*Nconec(k,1+cont)-1  : 2*Nconec(k,1+cont) , ...
                    2*NnoGlobal-1  : 2*NnoGlobal ) = ...
                    Kglobal(2*Nconec(k,1+cont)-1  : 2*Nconec(k,1+cont) , ...
                    2*NnoGlobal-1  : 2*NnoGlobal ) + Kzinho ;            
            cont=cont+1;
       end  
 end
end