function Def_Linear = Def_Axis_TriQuad(Nconec,SNcoord,Ufinal)
  % Calcula deformacao axissimetrico T6
  % Entrega uma matriz contendo as deformações de cada elemento
  %[NºElem er e0 ez gama_xy] para o caso axissimetric
     

    % Ele vai recalcular a matriz de derivadas elementar novamente. Poderia
    % ser otimizado
    NElementos = size(Nconec,1);
    NnosElemento = size(Nconec,2)-1;
    GLpNo = 2;
    
     np  = 3;
    % Posicao dos pontos
     e = [2/3 1/6;
          1/6 1/6;
          1/6 2/3];
      
    contador = 1;
    

    %Percorre os elementos
    for k = 1: NElementos;
        Ue=[];
        % Acha os nós do elemento      

        for i = 1: NnosElemento
        R(i,:) = SNcoord(Nconec(k,i+1),2);
        Z(i,1) = SNcoord(Nconec(k,i+1),3);
       
        %Verificar aqui
        
        
        Ue = [Ue ; Ufinal(GLpNo*(Nconec(k,i+1)-1)+1) ; Ufinal(GLpNo*( Nconec(k,i+1) -1 )+2)];
            
        end
        RZ = [R Z];
        
        % Loop nos pontos de Gauss
        for j = 1 : np
         e1 = e(j,1);  
         e2 = e(j,2);
         
         Phi = vetorFuncoesForma(e1,e2);
         r =  Phi*R; % e calculado interpolando os valores nodais

         B = B_Axis_TriQuad(e1,e2,R,Z,r);
         
         %Calcular a posicao do ponto de Gauss na coordenada real
         PosGauss=  Phi * RZ;
         
%          Def_Linear(contador,1) = contador;
         Def_Linear(contador,1:2) = PosGauss;    
         
         Def_Linear(contador,3:6) = (B*Ue)';
 
         contador = contador+1;
        end
    end    
end