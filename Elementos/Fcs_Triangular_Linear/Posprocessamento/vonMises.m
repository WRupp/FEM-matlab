function VM = vonMises(Mtensao)
    % Calcula a tensão de von-Mises para o elemento considerando estado
    % plano de deformacao [NºElem VonMisses]
    
    % Lembrando que Mtensao é [NºElem Sxx Syy Szz] 
    S = size(Mtensao,1);
    VM = zeros(S,2);
    for i = 1 : S       
        vms=sqrt(1/2*((Mtensao(i,2)-Mtensao(i,3))^2 + ...
                      (Mtensao(i,2)-Mtensao(i,4))^2 + ...
                      (Mtensao(i,3)-Mtensao(i,4))^2 ));
        VM(i,:)=[ Mtensao(i,1) vms];        
    end
end