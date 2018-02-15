clear; close all;
% Definição do material
E = 2e5;
v = 0.0;
Cd = Celi(E,v);

% Definição da Malha
Ncoord = [ 1 0 0;
           3 0 1;
           2 2 1;
           6 4 1;
           4 2 0;           
           5 4 0];
%            7 2 -1;
%            8 4 -1;
%            9 6 -1;
%            10 6 0];
       
Nconec = [1 1 4 3;
          2 4 2 3;
          3 4 5 2;
          4 5 6 2];
%           5 7 8 4;
%           6 8 5 4;
%           7 8 9 5;
%           8 9 10 5];

% Definições do tipo de Elemento

ngl=2;
NnosElemento = 3;  
Nnos = size(Ncoord,1);    

% Declaração inicial de Variaveis

Kglobal = zeros(ngl*Nnos);



% Reorganiza a matriz de coordenadas nodais (numeração crescente)
    SNcoord = sortrows(Ncoord);
    


for k = 1: size(Nconec,1);
    % Acha os nós do elemento
    n1 = Nconec(k,2);
    n2 = Nconec(k,3);
    n3 = Nconec(k,4);
    
    % Acha a posição dos nós
    X=[SNcoord(n1,2);SNcoord(n2,2);SNcoord(n3,2)];
    Y=[SNcoord(n1,3);SNcoord(n2,3);SNcoord(n3,3)];
        
    % Geração da matriz elementar
    Kelem = Ketp(X,Y,Cd);
    
    % Assembly no elemento na Global    

     Kglobal = AssemblyGlobal(Kglobal,NnosElemento,Nconec,Kelem,k);
        

end

 
%% Condições de contorno 
 
    % Matriz de deslocamentos nodais
        % Nno   U   GL (x=1, y=2)
        Mcc=[1  0   1;
             1  0   2;
             3  0   1;
             3  0   2];
         
         Mcc = sortrows(Mcc);
      
         % Matriz de forças nodais
   f=5000;
   
         Mfn=[5 f/2 1;
              6 f/2 1];
 
F=zeros(ngl*Nnos,1);

for i=1:size(Mfn,1)  
   F(2*(Mfn(i,1)-1) + Mfn(i,3)) = Mfn(i,2); 
end

 
%% Eliminação de linhas/colunas
 
 Kfinal =Kglobal;
 Ffinal =F;
 
 % Repensar essa parte da eliminação. Pois a cada eliminação os indices
 % são atualizados: Do jeito que foi feito ta do fim ao inicio
 for i=0:size(Mcc,1)-1
     
 Nno = Mcc(end-i,1);
 GL = Mcc(end-i,3);
 
 Kfinal(2*(Nno-1)+GL,:)=[];
 Kfinal(:,2*(Nno-1)+GL)=[];
 
 Ffinal(2*(Nno-1)+GL) = [];
 
 end
 
 %% Calculo dos deslocamentos
 
 U = Kfinal  \ Ffinal ;
 
 
 
 %% Pós processamento
 
% Reconstruido os vetor de deslocamentos
Ufinal = U;
 for L = 1:size(Mcc,1)
  glGlobal= Mcc(L,1)*ngl-2 +  Mcc(L,3);
  Ufinal = [Ufinal(1:glGlobal-1) ;   Mcc(L,2) ; Ufinal(glGlobal:end)];
 end
 
 % Plot
 
    figure;
    hold on; axis equal;    
    for i=1:size(SNcoord,1)
    plot(SNcoord(i,2),SNcoord(i,3),'bo'); 
    plot(SNcoord(i,2)+Ufinal(2*i-1),SNcoord(i,3)+Ufinal(2*i),'ro');        
    end
    


 
 % Calculo de deformações
 
 % Calculo de tensões

 