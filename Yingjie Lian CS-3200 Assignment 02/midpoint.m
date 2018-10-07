function[w_i, x_i] = midpoint(a,b,N)

% N = [17,33,65,129,257,513];
% for n = N(1:6)
deltaX = (b-a)/N;
x_i = zeros(1, N);
for i = 1:N
    x_i(i) = a + (i-0.5)*deltaX;
end
w_i = ones(1,N)*deltaX;
% end



% M = h*sum(f);