% the min eigenvalue is actually the inverse of eigval is returned 

function [eigval,eigvec] = MinimumEigenvaluePowerMethod(A,x0,maxerr)
err = realmax;
while(all(err > maxerr))
    xold = x0;
    Y = inv(A)*x0;
    eigval = max(abs(Y));
    eigvec = Y./eigval;
    x0 = eigvec;
    err = abs(sum(xold-x0));
end
end