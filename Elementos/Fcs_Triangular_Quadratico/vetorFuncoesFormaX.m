function Nx = vetorFuncoesFormaX(e1,e2)
    % Vetor de funcoes de forma específico para o caso de forcas nodais em
    % x do vaso de pressao
    
    
Phi(1) = (1-e1-e2)*(1-2*e1-2*e2);
Phi(2) = e1 * (2*e1-1);
Phi(3) = e2*(2*e2-1);

Phi(4) = 4* e1 * (1-e1-e2);
Phi(5) = 4 * e1 * e2;
Phi(6) = 4 * e2 * (1-e1-e2);

Nx = [ Phi(1) 0 Phi(2) 0 Phi(3) 0 Phi(4) 0 Phi(5) 0 Phi(6) 0]; 


end