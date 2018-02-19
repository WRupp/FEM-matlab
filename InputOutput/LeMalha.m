function [Ncoord,Nconec] = LeMalha(CaminhoArquivoNo,CaminhoArquivoElem)
% Le os arquivos de posições nodais e conectividadde de arquivos

% Nota : Nestes arquivos se espera que tenha apenas as tabelas, sem
% cabeçalhos ou outras coisas. Caso haja, seria necessário procurar as
% tabelas.

Ncoord = dlmread(CaminhoArquivoNo);

if(size(Ncoord,2)==4)
% Elimina a quarta coluna (Posição Z)
Ncoord(:,4)=[];
end 

Nconec = dlmread(CaminhoArquivoElem);

end 