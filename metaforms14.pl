%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%       GRUPO NUM: 78
%       ALUNOS: Ricardo Abreu, Alexandre Ferreira
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------------------------------------------------------------
%
%                            Pistas Intermedias
%
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% A implementacao dos predicados seguintes e feita recorrendo ao predicado
% coloca (implementada em metaforms12). Apenas ha que ter em conta a informacao sobre a linha ou
% a coluna em causa (ou ambas) e acrescentar os casos implicitos.
%---------------------------------------------------------------------

trioLeft(A,Linha,Coluna,Tabuleiro) :-
     (coloca(A, Linha, Coluna, Tabuleiro); 
      coloca(A, Linha, middle, Tabuleiro)).
	  
trioRight(A,Linha,Coluna,Tabuleiro) :-
     (coloca(A, Linha, Coluna, Tabuleiro); 
      coloca(A, Linha, middle, Tabuleiro)).
	  

cobra(A, Linha, Coluna, Tabuleiro) :-
	(coloca(A, Linha, Coluna, Tabuleiro); 
      coloca(A, Linha, middle, Tabuleiro)).


tSimples(A, Linha, Coluna, Tabuleiro) :-
	(coloca(A, Linha, Coluna, Tabuleiro); 
      coloca(A, center, Coluna, Tabuleiro)).
	
tLeft(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro); 
      coloca(A, Linha, middle, Tabuleiro)).
	  
tRight(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro); 
      coloca(A, Linha, middle, Tabuleiro)).
	  
tInvertido(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro); 
      coloca(A, center, Coluna, Tabuleiro)).

cantoTopLeft(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro);
	coloca(A,center,middle,Tabuleiro);
	coloca(A,Linha, middle,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro)).
	  
	  
cantoTopRight(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro);
	coloca(A,center,middle,Tabuleiro);
	coloca(A,Linha, middle,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro)).

cantoBottomLeft(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro);
	coloca(A,center,middle,Tabuleiro);
	coloca(A,Linha, middle,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro)).

cantoBottomRight(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro);
	coloca(A,center,middle,Tabuleiro);
	coloca(A,Linha, middle,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro)).

diagonalGrave(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro);
	coloca(A,center,middle,Tabuleiro);
	coloca(A,Linha, middle,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro)).

diagonalAguda(A, Linha, Coluna, Tabuleiro):-
	(coloca(A, Linha, Coluna, Tabuleiro);
	coloca(A,center,middle,Tabuleiro);
	coloca(A,Linha, middle,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro)).

%---------------------------------------------------------------------
%
%                            Predicado Check
%
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% A implementacao do predicado seguinte e feita recorrendo a funcao permutation.
% Usamos esta funcao para representar todas as combinacoes de tabuleiros possiveis.
% Assim, vamos tentando unificar o tabuleiro originado a partir das pistas dadas com todas estas combinacoes ate ser encontrada uma possivel
& No fim coloca-se este o tabuleiro no TabuleiroFinal
%---------------------------------------------------------------------	
	
check(T,TabuleiroFinal) :- lists:permutation([peca(circulo,azul),peca(circulo, vermelho),peca(circulo,amarelo),
	peca(triangulo,azul),peca(triangulo,amarelo),peca(triangulo,vermelho),
	peca(quadrado,azul),peca(quadrado,amarelo),peca(quadrado,vermelho)],Taux),
	Taux=T,
	TabuleiroFinal=Taux.