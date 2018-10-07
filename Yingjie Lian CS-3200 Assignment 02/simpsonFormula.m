function[w_i, x_i] = simpsonFormula(a,b,N)

deltaX = (b-a)/(2*N);
deltaX_1 = deltaX/3;
deltaX_2 = (4*deltaX)/3;
deltaX_3 = (2*deltaX)/3;

for i = 1:2*N+1
    x_i(i) = a + (i-1)*deltaX;
    if i == 1 || i == 2*N+1
        w_i(i) = deltaX_1;
    elseif mod(i,2) == 0
        w_i(i) = deltaX_2;
    else
        w_i(i) = deltaX_3;
    end   
end