% mymultnewton
clear all;
;
n = 25 % set some number of iterations , may need adjusting
%f = inline ( ’[x (1)^3+ x (2) -1 ; x (2)^3 - x (1)+1] ’); % the vector function
% the matrix of partial derivatives
%Df = inline ( ’ [3* x (1)^2 , 1 ; -1, 3* x (2)^2] ’);

% starting guess


answers = zeros(201, 3);

answers(:,1) = 400:600;

% answers(i,2) = x
% answers(i,3) = y
for i = 400:600
	x = i;
	y = i;
    for j = 1: n
        f1  =  x^2/186^2 - y^2/(300^2-186^2) - 1; 
        f2  =  (y -500)^2/279^2 - (x-300)^2/(500^2 - 279^2) - 1;
        a = x/17298;
        b = -2*(x-300)/172159;
        c = -y/27702;
        d = (2*y - 1000)/77841;
        det = a*d-b*c;
        dx = -(d*f1-c*f2)/det;
        dy = -(-b*f1+a*f2)/det;
        x = x +dx;
        y = y+ dy;
        if j == 25
            answers(i,2) = x;
            answers(i,3) = y;
            answers(i,1) = i;
        end
       
    end
    

end
answers
