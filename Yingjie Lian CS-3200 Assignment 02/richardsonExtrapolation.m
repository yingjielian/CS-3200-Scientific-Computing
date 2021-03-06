%Matlab may be used as follows to find the derivative
%using Richardson extrapolation. Note that matrices 
%start at (1,1), so we must make an adjustment. We 
%assume a function y = f(x) is defined.

x = 1;
h = 0.5;
eps_step = 0.00001;
R(1, 1) = ((1+sin(x+h).*cos((2*(x+h))/3).*sin(4*(x+h)))-(1+sin(x-h).*cos((2*(x-h))/3).*sin(4*(x-h))))/(2*h);
for i=1:100
   h = h/2;

   R(i + 1, 1) = ((1+sin(x+h).*cos((2*(x+h))/3).*sin(4*(x+h)))-(1+sin(x-h).*cos((2*(x-h))/3).*sin(4*(x-h))))/(2*h);

   for j=1:i
      R(i + 1, j + 1) = (4^j*R(i + 1, j) - R(i, j))/(4^j - 1);
   end

   if ( abs( R(i + 1, i + 1) - R(i, i) ) < eps_step )
      break;
   elseif ( i == 100 )
      error( 'Richardson extrapolation failed to converge' );
   end
end