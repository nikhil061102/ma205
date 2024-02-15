function [X,k] = Seidel(A,B,X,err)

D = tril(A) + triu(A) - A;
L = tril(A) - D;
U = triu(A) - D;

H = -inv(D+L)*U;
C = inv(D+L)*B;

E = B - A*X;
nm = norm(E,Inf);

k = 0;
while(nm > err)
    k = k + 1  ;
    X = H*X + C ;
    E = B - A*X;
    nm = norm(E,Inf);
end

end