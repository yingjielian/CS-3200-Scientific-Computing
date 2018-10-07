function program04;
% Spline function
degree = 61;
x = linspace(-1, 1, degree);

y = GelbTanner(x);
xint = linspace(-1, 1, 1001);
yint = spline(x, y, xint);
y_r = GelbTanner(xint);
error = y_r' - yint;

plot(xint, y_r, '-', xint, error, '-', xint, yint, '-');
ylim([-1.5,1.2]); % Zoom in the image by y-axis

title('Polynomials of degree 60')
xlabel('Between the range[-1,1]') % x-axis label
legend('Interpolation','Error','GelbTanner Function')

% calculate the error
error = y_r' - yint;

% L1 L2 and L infinity norms with 1001 sample points
L1 = ((b - a)/(N - 1)) * norm(error, 1);
L2 = sqrt((b - a)/(N - 1)) * norm(error, 2);
Linf = norm(error, inf);