function S_Axis = Tensao_Axis_TriQuad(MDef,C)
    % Calcula as tensoes para o caso axissimétrico
    tamanhoM=size(MDef);
    
    S_Axis = zeros (tamanhoM);
    
    S_Axis(:,1:2) = MDef(:,1:2);
    
    % Calcula as tensoes
    for i = 1 : tamanhoM(1)              
        S_Axis(i,3:6)= C * ( MDef(i,3:6))';        
    end
end 
