function F = AssemblyForcas(Set,SNcoord,Nconec)

SNC = size(Nconec);
ngl = 2; % N graus de liberdade 
NnosElemento = SNC(2)-1;
Nnos = size(SNcoord,1);
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
    r0 = 50;

    F = zeros (ngl*Nnos,1);
    

for k = 1 : SNC(1)
    
    Fe = zeros (ngl*NnosElemento,1); 
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
        
         Int = 0;
%         for j = 1 : np         
%             e1 = e(j,1);
%             e2 = e(j,2);
% 
%             J = J_Axis_TriQuad(e1,e2,R,Z);
%             Ji = 1/2 * det(J);
% 
% %             Phi = vetorFuncoesForma(e1,e2);
%             Phi = vetorFuncoesFormaX(e1,e2);
% 
% %             P = 2*pi*Pressao*Ji*(Phi'*Phi); % No caso é uma funcao constante	
% 
%             Int = Int + P * W(j);
%             
%             Fe = Int*Phi';           
%             
%         end
         
        % Aloca no global
                
        Nglobal = local2global(ngl,NnosElemento,Nconec,k);
        F(Nglobal) = F(Nglobal)+Fe;    
     
    end    
end

%      for j = 1 : SNC(2)-1
%          
%          
%          
%          
%      end
         
         
         
         





end
