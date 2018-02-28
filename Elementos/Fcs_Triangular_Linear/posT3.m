% pos processamento e plot do T3

% Calculo de deformações

   MDef = DefLin(Nconec,SNcoord,Ufinal);
 
 % Calculo de tensões

   Mtensao = CalcTensao(Cd,MDef);  

   VM = vonMises(Mtensao);


 %% Plot

     plotDefIndef(SNcoord, Nconec,DefNcoor);

    plotMap(Mtensao(:,2),DefNcoor,Nconec); title('\sigma _{xx}');
    plotMap(MDef(:,2),DefNcoor,Nconec); title('\epsilon _{xx}');
    plotMap(VM(:,2),DefNcoor,Nconec);  title('Von Mises');
    
%% Saida de dados  

    escreveDeslocamento(Ufinal,[caminhoOutput Unome]);
    escreveTensao(Mtensao,[caminhoOutput Tnome]);
    escreveDeformacao(MDef,[caminhoOutput Defnome]);