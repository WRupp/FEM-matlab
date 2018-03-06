% Plot U

figure;

x = 50 :0.05 : 55;
% F = scatteredInterpolant(S_Axis(:,1),S_Axis(:,2),S_Axis(:,3),'nearest');
F = scatteredInterpolant(MDef(:,1),MDef(:,2),MDef(:,5),'natural');
% F = scatteredInterpolant(SNcoord(:,2),SNcoord(:,3),Uorg(:,1),'nearest');


[X,Y]=meshgrid(x,x);
contourf(X,Y,F(X,Y),100,'LineColor','none');
colormap jet;