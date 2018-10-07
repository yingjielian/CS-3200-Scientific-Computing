%README: This program is going to get the vector H for problem 4.
function x = SolveForH(a)

 A = Diagonal(a,161);
 invA = inv(A);
 
 H = ones(161,1);
 H(1,1) = -8;
 H(161,1) = -(a*4);

  x = invA*H;
 x(1,1);
 x(2,1);
 x(160,1);
 x(161,1);
 
