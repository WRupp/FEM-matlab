function Kglobal = SomaNaGlobal3(Kglobal,NnosElemento,Nconec,Kelem,k)
% Assembly da Matriz de Rigidez Global


% Alguns n�meros 2 foram hardcoded pq o numero de graus de liberdade ngl �
% 2 
    ngl=2; % Foi HardCoded

   Nglobal = local2global(ngl,NnosElemento,Nconec,k); 

   Kglobal(Nglobal,Nglobal) = Kglobal(Nglobal,Nglobal) + Kelem;

end