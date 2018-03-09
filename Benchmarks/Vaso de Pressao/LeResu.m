
fNome = 'C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Benchmarks\Vaso de Pressao\';
OI = [fNome 'Resu.txt'];

Uabaqus = dlmread(OI);

Uabaqus(:,1)=[];

dif = Uabaqus-Uorg;

NormDif = sqrt(max(dif)*max(dif)');