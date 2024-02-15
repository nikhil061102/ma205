function [eigval,eigvec] = PowerMeth(A,x0,maxerr)
    err = realmax;
    while all(err > maxerr)
        xold = x0;
        Y = A*x0;
        eigval = max(abs(Y));
        eigvec = Y./eigval;
        x0 = eigvec;
        err = abs(sum(xold-x0));
    end
end