function F = AssemblyForcas(Set,SNcoord,Nconec)

SNC = size(Nconec);
ngl = 2; % N graus de liberdade 
NnosElemento = SNC(2)-1;
    % Numero de pontos de Gauss
         np  = 3;
    % Posicao dos pontos
     e = [2/3 1/6;
          1/6 1/6;
          1/6 2/3];
    % Peso
    W(1:np) = 1/3;
    
    % Apagar isso aqui;
    Pressao = 2.5;

    F = zeros (ngl*SNcoord,1);
    

for k = 1 : SNC(1)
    
    Fe = zeros (NnosElemento,1); 
    %Interpreta se k-esimo elemento tem nos no set em questao
    Intersecao = intersect(Set,Nconec(k,2:end));
    if (isempty(Intersecao))
        continue;        
    else
        
    % Calculo de Fe
    
%         Fe = zeros (NnosElemento,1);
        R = zeros(NnosElemento,1); 
        Z = zeros(NnosElemento,1);

        for i = 1: NnosElemento
            R(i) = SNcoord(Nconec(k,i+1),2);
            Z(i) = SNcoord(Nconec(k,i+1),3);
        end

        for j = 1 : np         
            e1 = e(j,1);
            e2 = e(j,2);

            J = J_Axis_TriQuad(e1,e2,R,Z);
            Ji = 1/2 * det(J);

            Phi = vetorFuncoesForma(e1,e2);

            P = 2*pi*Pressao*Ji*Phi; % No caso é uma funcao constante	

            Fe = Fe + P * W(j); 
        end
         
            
        
        
        
        
    end    
end

%      for j = 1 : SNC(2)-1
%          
%          
%          
%          
%      end
         
         
         
         





end
