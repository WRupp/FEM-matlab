function MDef = DefLin(Nconec,SNcoord,Ufinal)
  % Entrega uma matriz contendo as deforma��es de cada elemento
  %[N�Elem ex ey 2exy] para o caso de EPD
     

    % Ele vai recalcular a matriz de derivadas elementar novamente. Poderia
    % ser otimizado
    S=size(Nconec);
     
    MDef = zeros(S);

    for k = 1: S(1)
        % Acha os n�s do elemento
        n(1) = Nconec(k,2);
        n(2) = Nconec(k,3);
        n(3) = Nconec(k,4);

        % Acha a posi��o dos n�s
        X=[SNcoord(n(1),2);SNcoord(n(2),2);SNcoord(n(3),2)];
        Y=[SNcoord(n(1),3);SNcoord(n(2),3);SNcoord(n(3),3)];

        B = Btp(X,Y);
        
        sn = sortrows(n);
        
        % Acha os deslocamentos dos n�s do elemento
        Ssn = size(sn);
        Ue  = [];
        for i = 1 : Ssn(2) 
        Ue = [Ue ; Ufinal(2*sn(i)-1) ; Ufinal(2*sn(i)) ];
        end
        
        defLin = B*Ue;
        
        MDef(k,:) = [k defLin'];    
           
    end    
end