
%README:Please run the program to get the needed values and graph.
M = [2,3,4,5];
for i = 1:size(M,2)
    [wi, xi] = Gaussian(M(i),-1,1);
    GaussianValue(i) = (1-(-1))*dot(wi, (1+sin(xi).*cos((2*xi)/3).*sin(4*xi)))
end

N = [17,33,65,129,257,513]; 
for i = 1:size(N,2)
    [w_i, x_i] = trapezoid(0,2*pi,N(i))
    trapezoidValue(i) = dot(w_i, (1+sin(x_i).*cos((2*x_i)/3).*sin(4*x_i)))
end

for i = 1:size(N,2)
    [w_i, x_i] = midpoint(0,2*pi,N(i))
    midpointValue(i) = dot(w_i, (1+sin(x_i).*cos((2*x_i)/3).*sin(4*x_i)))
end

for i = 1:size(N,2)
    [w_i, x_i] = simpsonFormula(0,2*pi,N(i))
    simpsonFormulaValue(i) = dot(w_i, (1+sin(x_i).*cos((2*x_i)/3).*sin(4*x_i)))
end



plot(N,trapezoidValue,'-o', N, midpointValue,'-o', N,simpsonFormulaValue,'-o');
title('Implementation of Midpoint, Trapeziodal and SimpsonFormula Rule')
xlabel('N items')
ylabel('The values of each function')
legend('Trapeziodal','MidPoint','SimpsonFormula')