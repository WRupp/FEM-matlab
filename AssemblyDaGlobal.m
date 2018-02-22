function Kglobal = AssemblyDaGlobal(Nconec,SNcoord,Kglobal,Cd)

NElementos = size(Nconec,1);
NnosElemento = size(Nconec,2)-1;
n=zeros(1,NnosElemento);

    for k = 1: NElementos;
        % Acha os nós do elemento
        for i = 1: NnosElemento
        n(i) = Nconec(k,i+1);
        end
        
        % AQUI TEM QUE MUDAR PARA NUMERO DE NÓS VARIAVEL
        % Acha a posição dos nós 
        X=[SNcoord(n(1),2);SNcoord(n(2),2);SNcoord(n(3),2)];
        Y=[SNcoord(n(1),3);SNcoord(n(2),3);SNcoord(n(3),3)];

        % Geração da matriz elementar
        Kelem = Ketp(X,Y,Cd);

        % Assembly no elemento na Global    

        Kglobal = SomaNaGlobal(Kglobal,NnosElemento,Nconec,Kelem,k); 

    end
end