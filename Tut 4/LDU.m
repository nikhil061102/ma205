function [l,d,u] = LDU(A)
n = length(A);
l = eye(n);
for i=1:n
    for j = i+1:n
        m = A(j,i)/A(i,i);
        l(j,i) = m;
        A(j,:) = A(j,:) - m*A(i,:);
    end
end
udash = A;
d = zeros(n);
for i=1:n
    d(i,i) = udash(i,i);
end
u = inv(d)*udash;
end