%A1.1

%A = [5 1; -10 17];
%B = [17; 4];
%x = A\B

%A1.2 - trapz uses composite trapezoid rule
%y = [1 2 4]
%Q = trapz(y)

A = [1 2 3; 4 5 6; 7 8 9];
i=1;
n=3;
A(i, [i+1:n])
