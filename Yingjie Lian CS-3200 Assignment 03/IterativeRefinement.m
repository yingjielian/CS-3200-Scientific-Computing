%README: This program is going to compute the IterativeRefinement
%for problem 4.

function res = IterativeRefinement(a)

h = SolveForH(a);
 A = Diagonal(a,161);
 InvA = inv(A);
 
 H = ones(161,1);
 H(1,1) = -8;
 H(161,1) = -(a*4);
 res = ones(1,161);
 
 for i = 1:161
    AiRow = InvA(i,:);
    res(1,i) = AiRow * h - H(i,1);
 end

 z = InvA/res;
 
 for j = 1:161
     h(i,1) = h(i,1) - z(i);
     AiRow = InvA(j,:);
     res(1,i) = AiRow * h - H(i,1);
 end