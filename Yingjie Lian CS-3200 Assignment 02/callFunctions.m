function [w_i,x_i] = callFunctions(a,b,N)

N = [17,33,65,129,257,513];

for i = 1:5
    [w_i, x_i] = midpoint(a,b,N(i));
end


