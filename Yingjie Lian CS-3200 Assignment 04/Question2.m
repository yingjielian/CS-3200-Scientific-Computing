% mymultnewton
clear all;
;
n =50 % set some number of iterations , may need adjusting
%f = inline ( ’[x (1)^3+ x (2) -1 ; x (2)^3 - x (1)+1] ’); % the vector function
% the matrix of partial derivatives
%Df = inline ( ’ [3* x (1)^2 , 1 ; -1, 3* x (2)^2] ’);
x = 1.1;
y  = 1.1;
% starting guess
for i = 1: n
    f1  =  x^2 + y^2 - 2; 
    f2  =  exp(x-1)- y^2 - 2;
    a = 2*x;
    b = -2*y;
    c = +2*y;
    d = exp(x-1);
    det = a*d-b*c;
    dx = -(d*f1-c*f2)/det;
    dy = -(-b*f1+a*f2)/det;
    x = x +dx;
    y = y+ dy;
    disp(sprintf(' x= %9.3e y= %9.3e f1= %9.3e f2= %9.3e',x,y,f1,f2))
end