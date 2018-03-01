function Cr = Caxis(E,v)
% Calcula a matriz de rigidez do material elastico linear isotropico
% para o modelo axissimetrico

cte = E / ((1+v)*(1-2*v));

Cr = cte * [(1-v) v    v     0;
             v   (1-v) v     0;
             v    v    (1-v) 0;
             0    0    0     (1-2*v)/2];      
        
end 