
function [xi, wi] = Gaussian(N, a, b)

for i = 1:N
if N == 1
    xi = 0;
    wi = 2;
elseif N == 2
    xi = [-1/sqrt(3), 1/sqrt(3)];
    wi = [1, 1];
elseif N == 3
    xi = [-sqrt(3/5), 0, sqrt(3/5)];
    wi = [5/9, 8/9, 5/9];
elseif N == 4
    xi = [-sqrt((3+2*sqrt(6/5))/7), -sqrt((3-2*sqrt(6/5))/7), sqrt((3-2*sqrt(6/5))/7), sqrt((3+2*sqrt(6/5))/7)];
    wi = [(18-sqrt(30)/36),(18+sqrt(30)/36),(18+sqrt(30)/36),(18-sqrt(30)/36)];
elseif N == 5
    xi = [-(1/3*sqrt(5+2*sqrt(10/7))), -(1/3*sqrt(5-2*sqrt(10/7))), 0, (1/3*sqrt(5-2*sqrt(10/7))),(1/3*sqrt(5+2*sqrt(10/7)))];
    wi = [(322-13*sqrt(70))/900, (322+13*sqrt(70))/900, 0, (322+13*sqrt(70))/900, (322-13*sqrt(70))/900];
end
xi = ((b-a)/2)*xi + (a+b)/2;
end

    