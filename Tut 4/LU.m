function [l,u] = LU(A)
n = length(A);
l = eye(n);
for i=1:n
    for j = i+1:n
        m = A(j,i)/A(i,i);
        l(j,i) = m;
        A(j,:) = A(j,:) - m*A(i,:);
    end
end
u = A;
end