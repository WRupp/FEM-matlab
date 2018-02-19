function [Ncoord,Nconec] = LeMalha(CaminhoArquivoNo,CaminhoArquivoElem)
% Le os arquivos de posi��es nodais e conectividadde de arquivos

% Nota : Nestes arquivos se espera que tenha apenas as tabelas, sem
% cabe�alhos ou outras coisas. Caso haja, seria necess�rio procurar as
% tabelas.

Ncoord = dlmread(CaminhoArquivoNo);

if(size(Ncoord,2)==4)
% Elimina a quarta coluna (Posi��o Z)
Ncoord(:,4)=[];
end 

Nconec = dlmread(CaminhoArquivoElem);

end 