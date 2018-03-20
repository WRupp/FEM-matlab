function C = C3D_lame (lambda,mu)
% Calcula o  para um material elastico linear isotropico
% Dado em termos das constantes de lame 

C = [ lambda+2*mu lambda lambda 0 0 0 ;
      lambda lambda+2*mu lambda 0 0 0;
      lambda lambda+2*mu lambda 0 0 0;
      0 0 0 mu 0 0 0;
      0 0 0 0 mu 0 0;
      0 0 0 0 0 mu ];

end

