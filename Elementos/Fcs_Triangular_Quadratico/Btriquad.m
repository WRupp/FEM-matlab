function B = Btriquad(e1,e2,J)

    % Transformando as derivadas

    Psi = MatrizGradienteTriQuad(e1,e2);
    
    N =  J \ Psi ;    

    B = [ N(1,1) 0      N(1,2) 0      N(1,3) 0      N(1,4) 0      N(1,5) 0      N(1,6) 0;
          0      N(2,1) 0      N(2,2) 0      N(2,3) 0 	   N(2,4) 0      N(2,5) 0      N(2,6);
          N(2,1)/2 N(1,1)/2 N(2,2)/2 N(1,2)/2 N(2,3)/2 N(1,3)/2 N(2,4)/2 N(1,4)/2 N(2,5)/2 N(1,5)/2 N(2,6)/2 N(1,6)/2];       
            
end