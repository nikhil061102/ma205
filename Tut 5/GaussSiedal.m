function [y,n] = GaussSiedal(A,B,X0,maxerr)
n = length(A);
D = diag(diag(A));
L = tril(A)-D;
U = triu(A)-D;
err = realmax;
H = inv(D+L)*(-U);
C = inv(D+L)*B;
iter = 0;
while sum(abs(err)<maxerr) ~= n
    xnew = H*X0 + C;
    err = xnew-X0;
    X0 = xnew;
    iter = iter+1;
end
y = X0;
n = iter;
end