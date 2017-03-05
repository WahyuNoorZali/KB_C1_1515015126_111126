PREDICATES
	ayah(STRING,STRING)
	putra(STRING,STRING)
	kakek(STRING,STRING)
	cucu(STRING,STRING)
	kakekBuyut(STRING,STRING)
	cicit(STRING,STRING)
	
CLAUSES
	putra("fari","rijali").
	putra("rijali","liha").
	putra("liha","hasam").
	putra("hasam","samsul").
	putra("samsul","sulisno").
	
	ayah(A,B):-putra(B,A).
	kakek(A,B):-ayah(A,C),ayah(C,B).
	kakekBuyut(A,B):-kakek(A,C),ayah(C,B),ayah(A,D),kakek(D,B).
	cucu(A,B):-putra(A,C),ayah(B,C).
	cicit(A,B):-cucu(A,C),ayah(B,C),kakek(B,D),ayah(C,D).
	
GOAL
	cicit("rijali",Cicit).
	