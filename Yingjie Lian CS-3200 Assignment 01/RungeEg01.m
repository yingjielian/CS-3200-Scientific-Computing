Script File: RungeEg01

% For n=10:13, interpolants of f(x) = 1/(1+25x^2) on [-1,1]'
% are of plotted.

%   close all
  x = linspace(-1,1,100)';
  y = 1.0./(1.0 + 25.0*x.*x); %note matlab vector notation
  %y = sqrt(abs(x));
  iplot = 0;
  for n=11:14
     for kk = 1:n
      xt = -cos( (2.0*kk-1.0)*pi/(2.0*n)) / cos (pi/(2.0*n));
      xEqual(kk) = xt;
      yEqual(kk) = 1.0/(1.0 +25.0*xt*xt);
   %   yEqual(kk) = sqrt(abs(xt));
     end 
     ytemp  = yEqual;
     cEqual=InterpN(xEqual,ytemp);
     pvals = HornerN(cEqual,xEqual,x);
     iplot = iplot+1;
     subplot(2,2,iplot)
     plot(x,y,x,pvals,xEqual,yEqual,'*')
     title(sprintf('Equal Spacing (n = %2.0f)',n))
  end
