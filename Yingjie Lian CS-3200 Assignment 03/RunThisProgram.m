%README: This program is going to get the graph of the condition number for 1-norm and show How does the condition number vary with the
% value of a for problem 4.
a = [1.0, 1.0e-1,1.0e-3, 1.0e-5, 1.0e-7, 1.0e-9, 1.0e-11,1.0e-13, 1.0e-15];

conditionNum = 0* a;
for i = 1:size(a,2)
    conditionNum(i) = ConditionNumber(a(i),21)
end

subplot(2,1,2)
h1=plot(a,log10(conditionNum),'-o');
set(h1,'linewidth',5);
set(h1,'color','red');
title('Log Base 10 estimated condition number for 1-norm When n is 21')
xlabel('The value of a')
ylabel('The values of Log Base 10 Condition Number')
legend('Estimated Log Base 10 Condition Number')

subplot(2,1,1)
h2=plot(a,conditionNum,'-o');
set(h2,'linewidth',3);
title('Estimated condition number for 1-norm When n is 21')
xlabel('The value of a')
ylabel('The values of Estimated Condition Number')
legend('Estimated Log Base 10 Condition Number')
