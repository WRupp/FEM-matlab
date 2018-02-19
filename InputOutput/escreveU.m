function []=escreveU(Ufinal,fNome)
% Escreve um arquivo com os deslocamentos nodais na forma [N�n� Ux Uy]
% fNome � uma string com o nome do arquivo.

    S2 = size(Ufinal,1)/2;
    Uorganizado = zeros(S2, 3); 
    fID = fopen(fNome,'w');  
    
    %Organiza o vetor de deslocamentos da forma [N�n� Ux Uy]
    for i = 1 : S2;
        linha =  [ i Ufinal(2*i-1) Ufinal(2*i) ];
        fprintf(fID ,'%i %12.8e %12.8e \n',linha);
%         Uorganizado(i,:) = linha ;
    end
    
    fclose(fID);
    
end