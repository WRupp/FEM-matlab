function DefNcoord = defCoord(SNcoord,Uorg)
% Atualiza as coordenadas nodais ap�s a deforma��o

DefNcoord = SNcoord;
DefNcoord(:,2:end) = DefNcoord(:,2:end)+Uorg;

end
