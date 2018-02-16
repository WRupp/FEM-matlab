function Mtensao = CalcTensao(Cd,Mdef)      
    % Calcula o vetor de tensão para o EPD e entrega uma matriz de tensão
    % nos elements [NºElem Sx Sy Sz]
        
    S = size(Mdef);
    Mtensao = zeros(S);
    
    for k = 1 : S(1)
                
        Tensao = Cd * Mdef(k,2:4)';
        
        Mtensao(k,:) = [ Mdef(k,1) Tensao'];
        
    end     
        
end