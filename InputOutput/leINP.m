function [Ncoord,Nconec] = leINP(INPfile)
    % Le um arquivo .inp e pega as coordenadas nodais e conectividade.
    % Nao aceita assembly.


    fileID = fopen(INPfile,'r');

    str = '-1'; % Inicia a string

        % Le o arquivo até achar a parte nodal
    while (~strcmp(str,'*Node'))                                                    
      str=fgetl(fileID); 
    end

        % Le a string e transforma em matriz de coordenadas nodais
      %  str = '-1'; % Reinicia a str para entrar no loop
        cont = 1;
        str=fgetl(fileID);
    while (~strcmp(str(1),'*'))                                                  
      C = strsplit(str,', ');
      Ncoord(cont,:) = str2double(C);
      cont = cont+1; 
      str=fgetl(fileID);
    end

        % Le a string e transforma em matriz de conectividade elementar
      cont = 1;
      str=fgetl(fileID);
    while (~strcmp(str(1),'*'))                                                   
      C = strsplit(str,', ');
      Nconec(cont,:) = str2double(C);
      cont = cont+1; 
      str=fgetl(fileID);
    end

    fclose(fileID);

end