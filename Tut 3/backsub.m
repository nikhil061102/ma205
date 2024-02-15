function [x] = backsub(A,B)
n = length(B);
x = zeros(n,1);
x(n) = B(n)/A(n,n);
for k=n-1:-1:1
    x(k) = (B(k)-A(k,k+1:n)*x(k+1:n))/A(k,k);
end
end