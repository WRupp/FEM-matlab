function Mtensao = CalcTensao(Cd,Mdef)      
    % Calcula o vetor de tens�o para o EPD e entrega uma matriz de tens�o
    % nos elements [N�Elem Sx Sy Sz]
        
    S = size(Mdef);
    Mtensao = zeros(S);
    
    for k = 1 : S(1)
                
        Tensao = Cd * Mdef(k,2:4)';
        
        Mtensao(k,:) = [ Mdef(k,1) Tensao'];
        
    end     
        
end