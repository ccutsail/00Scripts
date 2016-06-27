%% 3.1.1.a
load census
t = cdate-1790;
y = pop;
hold off
x = [t.^3 t.^2 t ones(length(t),1)];
a = x\y;
plot(t,y,'.',t,x*a)
title('Cubic OLS Problem for U.S. Population')
xlabel('Time (Years), beginning in 1790')
ylabel('Population Size')
legend('Actual','Predicted')
[200^3 200^2 200 1]*a
[210^3 210^2 210 1]*a
%%
% So the predicted value for the year 2000 is 52,382,000,000,000 and the predicted
% value for the year 2010 is 53,063,000,000,000
%% 3.1.1.b
xb = [exp(t)];
ab = xb\y;
plot(t,y,'.',t,ab*xb)
title('Exponential OLS Problem for U.S. Population')
xlabel('Time (Years), beginning in 1790')
ylabel('Population Size')
legend('Actual','Predicted')
[exp(200)]*ab
[exp(210)]*ab

%% 3.1.1.c
% Actual 2,000 population: 281,421,906
% 
% Projected with (cubic,exponential) = (250047000, 248710300)
%
% Difference: (31374906,32711606)
%
% 2010 Actual: 308,745,538
%
% Projected with (cubic,exponential) = (276963200, 5478200000000)
%
% Difference: (31782338,-5477891254462
clear
%% 3.1.2.a,b,c
%

t = linspace(0,2*pi,200); 
b = exp(sin(t-1));
for i = 1:8; 
    x(:,i) = t.^(i-1);
end
x2 = [ones(1,200); cos(t); sin(t); cos(2*t); sin(2*t)];
d = x2'\b';
a = x\b';
%%
% (a)
a
%% 
% (b)
d

%% 
% (c)
plot(t,b,t,x*a,t,x2'*d)
title('7th Order Polynomial Estimation of e^{sin(t-1)}')
xlabel('t')
ylabel('f(t)')
legend('e^{sin(t-1)} ','Predicted Values (Polynomial)','Predicted Values (Trig Function)')


