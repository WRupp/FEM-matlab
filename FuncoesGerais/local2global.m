function Nglobal = local2global(GLpNo,Nnos,Nconec,k)
	% Mapeia os nos locais para o seu respectivo no global e o respectivo grau de liberdade.

	% Pega o numero de nos por elemento
%	Nnos = size (Nconec,2)-1;
	%Numero de graus de liberdade por no
%	GLpNo = 2 ; %Hardcoded

for i = 1 : Nnos
    for dof = 1 : GLpNo
		Nglobal ( GLpNo*(i-1) + dof ) = GLpNo *( Nconec(k,i+1) -1 )+ dof;
    end
end
    
end