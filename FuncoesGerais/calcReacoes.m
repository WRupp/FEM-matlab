function [Fglobal,Kglobal] = calcReacoes(Kglobal,Fglobal,U,salvaEq)
    % Calcula as reacoes e repoe as linhas/colunas eliminadas da Kglobal
    
    tamanho = size(salvaEq);
    
    for i = 1 : tamanho(1)
    nG = salvaEq(i,1);
    Fglobal(nG) = salvaEq(i,2:tamanho(2)) * U;
    Kglobal(nG,:) = salvaEq(i,2:tamanho(2));
    Kglobal(:,nG) =  salvaEq(i,2:tamanho(2))';
    end

end