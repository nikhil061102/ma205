function [L,U] = decompose(A)
n = size(A,1);
L = zeros(n,n);
U = zeros(n,n);
for a = 1:n
    L(a,a) = 1;
end
U(1,:) = A(1,:);
L(:,1) = A(:,1)/U(1,1);
for i = 2:n
    for j = 1:n
        U(i,j) = A(i,j) - L(i,1:i-1)*U(1:i-1,j);
    end
    for k = i+1:n
        L(k,i) = (A(k,i) - L(k,1:i-1)*U(1:i-1,i))/U(i,i);
    end
end