function []=escreveDeformacao(MDef,fNome)
% Escreve um arquivo com as tesoes no elemento na forma [NºElem Sxx Syy Szz]
% fNome é uma string com o nome do arquivo para saídas.

    fID = fopen(fNome,'w');    
    for i = 1 : size(MDef,1);
        fprintf(fID ,'%i ; %12.8e ; %12.8e ; %12.8e \n',MDef(i,:));       
    end   
    fclose(fID);    
end