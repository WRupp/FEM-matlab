% Condicoes de contorno pra viga

    % Matriz de deslocamentos nodais
    %  % Nno   U   GL (x=1, y=2)
    
    xmin=min(Ncoord(:,2)); % se eu soubesse a priori seria melhor
    Set = NodePosFinder(Ncoord,xmin);
    
    Mcc = set2Mcc(Set,0,1,[]);
    Mcc = set2Mcc(Set,0,2,Mcc);

    % Matriz de forcas nodais
         
    xmax=max(Ncoord(:,2)); % se eu soubesse a priori seria melhor
    SetDireita = NodePosFinder(Ncoord,xmax);
    SetLinhaNeutraDir = NodePosYFinder(Ncoord(SetDireita,:),5/2);
    
    Fface= -100;
    
    f = Fface;
%      f = Fface/size(Set2,1) ; % Rever cargas nodais consistentes
    
    Mfn = set2Mcc( SetLinhaNeutraDir,f,2,[]);
%     Mfn = set2Mcc(Set2,f,2,Mfn);       