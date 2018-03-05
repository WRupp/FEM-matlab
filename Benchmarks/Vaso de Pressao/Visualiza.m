% Plot U

% figure;


z = 50:0.25:55;
%  Griddata
[xq,yq] = meshgrid(z,z);
% vq = griddata(jk,z,lk,xq,yq);
vq = interp2(z,z,lk,xq,yq,'cubic');
% 

surf(xq,yq,vq)
%
