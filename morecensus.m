
load census
t = cdate-1790;
y = pop;
hold off
A = [t.^3 t.^2 t ones(length(t),1)];
[Qa,Ra] = qr(A);
xa = Ra\(Qa'*y);
plot(t,y,'.',t,A*xa)
title('Cubic OLS Problem for U.S. Population Using QR Factorization')
xlabel('Time (Years), beginning in 1790')
ylabel('Population Size')
legend('Actual','Predicted')



figure;
Ab = [exp(t)];
[Q,R] = qr(Ab);
xb = R\(Q'*y);
plot(t,y,'.',t,xb*Ab)
title('Exponential OLS Problem for U.S. Population Using QR Factorization')
xlabel('Time (Years), beginning in 1790')
ylabel('Population Size')
legend('Actual','Predicted')

[exp(200)]*xb
[exp(210)]*xb