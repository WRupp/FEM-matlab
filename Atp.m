function A = Atp(X,Y)

% calcula a área para um elemento triangular plano dadas as posições nodais (sentido anti-horário).

detJ= (X(2)-X(1))*(Y(3)-Y(1))-(X(3)-X(1))*(Y(2)-Y(1));

A = 1/2 * abs(detJ);

end
