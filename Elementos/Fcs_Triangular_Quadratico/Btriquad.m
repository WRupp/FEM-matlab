function B = Btriquad(e1,e2,J)

    % Transformando as derivadas

    Psi = MatrizGradienteTriQuad(e1,e2);
    
    N =  J \ Psi ;    

    B = [ N(1,1) 0      N(1,2) 0      N(1,3) 0      N(1,4) 0      N(1,5) 0      N(1,6) 0;
          0      N(2,1) 0      N(2,2) 0      N(2,3) 0 	   N(2,4) 0      N(2,5) 0      N(2,6);
          N(2,1) N(1,1) N(2,2) N(1,2) N(2,3) N(1,3) N(2,4) N(1,4) N(2,5) N(1,5) N(2,6) N(1,6)];       
           
end