function Def_Linear = Def_Axis_TriQuad2(Nconec,SNcoord,Ufinal)
  % Calcula deformacao axissimetrico T6
  % Entrega uma matriz contendo as deformações de cada elemento
  %[NºElem er e0 ez gama_xy] para o caso axissimetric
     

    % Ele vai recalcular a matriz de derivadas elementar novamente. Poderia
    % ser otimizado
    NElementos = size(Nconec,1);
    NnosElemento = size(Nconec,2)-1;
    NNos = size(SNcoord,1);
    GLpNo = 2;
    
    
    % Posicao dos nos em coordenadas naturaris
     e = [ 0 0;
           1 0;
           0 1;
           0.5 0;
           0.5 0.5;
           0 0.5];
                   
    contador = 1;
    
    Def_Linear=zeros( NNos, 5);

    %Percorre os elementos
    for k = 1: NElementos;
        Ue=[];
        % Acha os nós do elemento      

        for i = 1: NnosElemento
        R(i,:) = SNcoord(Nconec(k,i+1),2);
        Z(i,1) = SNcoord(Nconec(k,i+1),3);
                 
        Ue = [Ue ; Ufinal(GLpNo*(Nconec(k,i+1)-1)+1) ; Ufinal(GLpNo*( Nconec(k,i+1) -1 )+2)];
        end
        for j = 1 : NnosElemento
         RZ = [R Z];
         
         e1 = e(j,1);  
         e2 = e(j,2);   
         
         
         Phi = vetorFuncoesForma(e1,e2);
         r =  Phi*R; % e calculado interpolando os valores nodais

         B = B_Axis_TriQuad(e1,e2,R,Z,r);
         
         %Calcular a posicao do ponto de Gauss na coordenada real
%          PosGauss=  Phi * RZ;
         
         Def_Linear(contador,1) = contador;
%          Def_Linear(contador,2:3) = PosGauss;    
         
         Def_Linear(contador,2:5) = (B*Ue)';
 
         contador = Nconec(k,i+1) ;% contador+1;
        end                       
    end    
end