father('Mohammed Dery','Terry').
father('Terry','Jack').
mother('Mohammed Dery','Elsa').
patriage(X,[X,Y],Y) :- father(X,Y).
patriage(X,[X|R],R) :- father(X,Y), patriage(Y,R,_).
lineage(X) :- patriage(X,A,B),print(X),print('b.'),print(B),nl,fail.