function [x] = forsub(A,B)
n = length(B);
x = zeros(n,1);
x(1) = B(1)/A(1,1);
for k=2:n
    x(k) = (B(k)-A(k,1:k-1)*x(1:k-1))/A(k,k);
end
end