% Script File: RungeEg
%
% For n=10:13, interpolants of f(x) = 1/(1+25x^2) on [-1,1]'
% are of plotted.
%
  close all
  x = linspace(-1,1,100)'; 
  y = ones(100,1)./(1 + 25*x.^2);
  iplot = 0;
  for n=10:13
%     figure
     xEqual = linspace(-1,1,n)'; 
     yEqual = ones(size(xEqual))./(1+25*xEqual.^2);;
     cEqual=InterpN(xEqual,yEqual);
     pvalsEqual = HornerN(cEqual,xEqual,x);
     iplot = iplot+1;
     subplot(2,2,iplot)
     plot(x,y,x,pvalsEqual,xEqual,yEqual,'*')
     title(sprintf('Equal Spacing (n = %2.0f)',n))
  end
