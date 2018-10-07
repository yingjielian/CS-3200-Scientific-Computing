function expAndHubbard;
%README
%Push the Run button, then you should be able to run this code.
%You will get a figure which is the result of this code
x = linspace(-1, 1, 1000);
y1 = exp(x);
y2 = hubbard01(x); % t = 0
y3 = hubbard02(x); % t =0.25
y4 = hubbard03(x); % t = 0.5
plot(x, y1, '-', x, y2, '-', x, y3, '-', x, y4, '-');
end


