% clear; 
L = 350; % mm
x = 0:5:L; % mm
P = Fface ; %-10;  % N
% E = 2e5; % Mpa

b = 1 ; % mm
h = 5 ; % mm
% I = MI_retangulo(b,h);
I = b * h ^3 /12;

uy = [ x'  vigaEuler(x,P,E,I,L)'];

dif = Vuy(:,3)-uy(:,2);