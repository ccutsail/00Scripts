t = (cdate-1900)/100;
p = pop/100;
% Our goal is to solve for constants of a nonlinear function that give the
% best approximation to the data. The nonlinear model function can be expressed as
modp = @(c)c(1)+c(2)*exp(c(3)*t);
% Jacobian is matrix of first order derivatives;
J = @(c)[ones(size(t)),exp(c(3)*t),c(2)*t'*exp(c(3)*t)];
% To get a good initial guess so that likelihood of convergence is
% improved, I plotted the model function with constants equal to one and
% played around with it a bit. This gave me guesses for the coefficients of
% -1/2, 1.2, 1. Assign these to c0.
c0 = [-1/2 1.2 1];
modvals = newtonsys(modp,J,c0)
