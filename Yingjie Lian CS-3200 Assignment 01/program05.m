function program05;
% Spline function
degree = 29;
x = linspace(0, 1, degree);

y = hubbard02(x); % t = 0.25
xint = linspace(0, 1, 1001);
yint = spline(x, y, xint);
y_r = hubbard02(xint);

err = y_r' - yint;
plot(xint, y_r, '-', xint, err, '-', xint, yint, '-');
ylim([-0.2,1.2]); % Zoom in the image by y-axis

title('Polynomials of degree 28')
xlabel('Between the range[0,1]') % x-axis label
legend('Interpolation','Error','Hubbard Function')

% calculate the error
err = y_r' - yint;

% L1 L2 and L infinity norms with 1001 sample points
L1 = ((b - a)/(N - 1)) * norm(err, 1);
L2 = sqrt((b - a)/(N - 1)) * norm(err, 2);
Linf = norm(err, inf);

