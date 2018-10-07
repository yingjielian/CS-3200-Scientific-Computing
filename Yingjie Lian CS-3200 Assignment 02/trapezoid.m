function[w_i, x_i] = trapezoid(a,b,N)

deltaX = (b-a)/(N-1);
deltaX_2 = deltaX/2;

for i = 1:N
    x_i(i) = a + (i-1)*deltaX;
    if i == 1 || i == N
        w_i(i) = deltaX_2;
    else
        w_i(i) = deltaX;
    end   
end


