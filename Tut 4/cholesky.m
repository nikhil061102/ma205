function [L] = cholesky(A)
n = length(A);
L = zeros(n);
L(1,1) = sqrt(A(1,1));
for a = 2:n
    L(a,1) = A(a,1)/L(1,1);
end

for i = 2:n
    for j = 2:i-1
        L(i,j) = (A(i,j)-L(i,1:j-1).*L(j,1:j-1))/L(j,j);
    end
end

for k = 2:n
    L(k,k) = sqrt(A(k,k)-L(k,1:k-1)*L(1:k-1,k));
end
end