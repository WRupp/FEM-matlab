function MDef = DefLin(Nconec,SNcoord,Ufinal)
  % Entrega uma matriz contendo as deformações de cada elemento
  %[NºElem ex ey 2exy] para o caso de EPD
     

    % Ele vai recalcular a matriz de derivadas elementar novamente. Poderia
    % ser otimizado
    S=size(Nconec);
     
    MDef = zeros(S);
    NnosElemento = size(Nconec,2)-1;

    for k = 1: S(1)
        
        for i = 1: NnosElemento
        X(i) = SNcoord(Nconec(k,i+1),2);
        Y(i) = SNcoord(Nconec(k,i+1),3);
        n(i) = Nconec(k,i+1);
        end

        B = Btp(X,Y);  % AQUI ESTÁ FUNCIONANDO APENAS PARA UM TIPO DE ELEM
        
        sn = sortrows(n);
        
        % Acha os deslocamentos dos nós do elemento
        Ssn = size(sn);
        Ue  = [];
        for i = 1 : Ssn(2) 
        Ue = [Ue ; Ufinal(2*sn(i)-1) ; Ufinal(2*sn(i)) ];
        end
        
        defLin = B*Ue;
        
        MDef(k,:) = [k defLin'];    
           
    end    
end