% Script para plot do problema do vaso de Pressao.

x = r0 :0.05 : r0+5;
y = 0 :0.05 : 5;
[X,Y]=meshgrid(x,y);

%% Plot deslocamentos

figure; colormap jet;  
for i = 1 : 2
subplot(1,2,i);

Func = scatteredInterpolant(SNcoord(:,2),SNcoord(:,3),Uorg(:,i));

contourf(X,Y,Func(X,Y),200,'Linecolor','none');
colorbar('Eastoutside'); axis equal;
    
    % Titulos    
        title(sprintf('U%i',i));   
end



%% Plot deformacao

figure; colormap jet; 
for i = 1 : 4
subplot(2,2,i);
Func = scatteredInterpolant(MDef(:,1),MDef(:,2),MDef(:,2+i));

contourf(X,Y,Func(X,Y),200,'Linecolor','none');
colorbar('Eastoutside'); axis equal;
    
    % Titulos
    if i ==4
        title('E12');
    else
        title(sprintf('E%i%i',i,i));
    end
end

%% Plot Tensao

figure; colormap jet;  
for i = 1 : 4
subplot(2,2,i); 
Func = scatteredInterpolant(S_Axis(:,1),S_Axis(:,2),S_Axis(:,2+i));

contourf(X,Y,Func(X,Y),200,'Linecolor','none');
colorbar('Eastoutside'); axis equal;
    
    % Titulos
    if i ==4
        title('\sigma12');
    else
        title(['\sigma' sprintf(' %i%i',i,i)]);
    end
end

