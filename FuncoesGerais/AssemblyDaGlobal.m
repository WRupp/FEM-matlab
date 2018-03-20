function Kglobal = AssemblyDaGlobal(Nconec,SNcoord,Kglobal,Dim,ngl,C)

NElementos = size(Nconec,1);
NnosElemento = size(Nconec,2)-1;

%         X = zeros(NnosElemento,1); 
%         Y = zeros(NnosElemento,1);
%         Z = zeros(NnosElemento,1);
        PosicoesNodais = zeros(NnosElemento,Dim);

    for k = 1: NElementos;
        
        % Acha os nós do elemento      

        for i = 1: NnosElemento
            for j = 1 : Dim
                PosicoesNodais(i,j) = SNcoord(Nconec(k,i+1),j+1);   
            end
        end
        
        % Poderia ser alterado aqui que em Kelem levasse apenas a matriz de
        % posicoes nodais ao inves de varios vetores
        
        X = PosicoesNodais(:,1);
        Y = PosicoesNodais(:,2);
        if Dim == 3
        Z = PosicoesNodais(:,3);
        end
        
        % Geração da matriz elementar
        
%          Kelem = intTriQuadratico(X,Y,C);  % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
%          Kelem = Ketp(X,Y,C);  % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO
%         Kelem = int_Axis_TriQuad (X,Y,C);
%         Kelem = int_QuadLin (X,Y,C);
%          Kelem = int_QuadQuad (X,Y,C);
         Kelem = int_HEX8 (PosicoesNodais,C);
     
        % Assembly no elemento na Global    
        Kglobal = SomaNaGlobal(Kglobal,NnosElemento,Nconec,Kelem,k,ngl); 

    end
end