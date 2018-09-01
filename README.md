# LinearFEM
(Work in Progress)

A small program made for educational purposes. Includes the basics of the Finite Element Method applied to solid mechanics.

Um pequeno programa feito para entender os basicos do Método de Elementos Finitos aplicado à mecânica dos solidos. 

----------------------------------------------------------------------------------------------------------------------------

## Conteúdo

#### Material

- Linear Elástico

#### Tipos de simulação

- Estado plano de deformação
- Estado plano de tensão
- Axissimetrico 
- 3D

#### Tecnologias de elemento

- Triangular Linear (3 nós)
- Triangular Quadrático (6 nós)
- Quadrilatero Linear (4 nós)
- Quadrilatero Quadrático (9 nós)
- Triangular Quadrático Axi (6 nós)
- Hexagonal linear ( 8 nós )

A malha pode ser informada diretamente nas matrizes Ncoord e Nconec. ou através de um arquivo '.inp' se houver o tipo adequado de elemento.

#### Condições de contorno

- Deslocamento preescrito
- Carga nodal (não seguidora)


----------------------------------------------------------------------------------------------------------------------------

## Setup da Simulação

#### Malha
Ncoord - Matriz de coordenadas nodais. Segue o estilo : [Número do nó , Posição X, Posição Y , Posição Z]

Nconec - Matriz de coordenadas nodais. Segue o estilo : [Número do elemento , No1 , No2 , ...]

#### Condições de contorno
Mcc - Matriz de condições de contorno do tipo deslocamento preescrito. Segue o estilo : [Número do nó , Deslocamento , Grau de Liberdade]

Mfn - Matriz de forças nodais. Segue o estilo : [Número do nó , Força , Grau de Liberdade]

#### Tipo de simulação

Deve-se escolher o tipo apropriado de matriz tangente para cada tipo de simulação.
**IMPORTANTE:**  Essa condição deve ser modificada no Main e na função AssemblyDaGlobal e devem estar consistentes. Verificar se o elemento possui o tipo de simulação desejado


#### Material 

No momento apenas um material Linear Elastico está implementado. As constantes elásticas do modulo de elasticidade (E) e da razão de poisson (v) devem ser indicadas

	

