function C = C3D (E,v)
% Calcula o  para um material elastico linear isotropico
% Dado em termos de modulo de elasticidade E e o coef de poisson v 

lambda = E*v / ((1+v)*(1-2*v));
mu = E / (2*(1+v)) ; % = G

C = [ lambda+2*mu lambda lambda 0 0 0 ;
      lambda lambda+2*mu lambda 0 0 0;
      lambda lambda lambda+2*mu 0 0 0;
      0 0 0 mu 0 0;
      0 0 0 0 mu 0;
      0 0 0 0 0 mu];

end

