function Kglobal = SomaNaGlobal(Kglobal,NnosElemento,Nconec,Kelem,k,ngl)
% Assembly da Matriz de Rigidez Global

   Nglobal = local2global(ngl,NnosElemento,Nconec,k); 

   Kglobal(Nglobal,Nglobal) = Kglobal(Nglobal,Nglobal) + Kelem;

end