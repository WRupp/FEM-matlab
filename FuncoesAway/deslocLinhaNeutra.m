function Vuy = deslocLinhaNeutra (SNcoord,Uorg)
    % Acha os deslocamentos em y da linha neutra da viga

    posY = (max(SNcoord(:,3))+min(SNcoord(:,3)))/2;
%     posY = 5/2; % Hardcoded
    LinhaNeutra = NodePosYFinder(SNcoord, posY );
    
    if (isempty(LinhaNeutra))
        warning('Nenhum nó na linha neutra')
    end    
    
    Vuy(:,1) = SNcoord(LinhaNeutra,1);  % Numero do no
    Vuy(:,2) = SNcoord(LinhaNeutra,2);  % Posicao x do no
    Vuy(:,3) = Uorg(LinhaNeutra,2);     % Deslocamento Uy do no
    
    Vuy = sortrows(Vuy,2);  % Rearranja de acordo com a pos x
    
end
    