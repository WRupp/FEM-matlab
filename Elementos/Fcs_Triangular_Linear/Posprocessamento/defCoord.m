function DefNcoord = defCoord(SNcoord,Uorg)
% Atualiza as coordenadas nodais após a deformação

DefNcoord = SNcoord;
DefNcoord(:,2:end) = DefNcoord(:,2:end)+Uorg;

end
