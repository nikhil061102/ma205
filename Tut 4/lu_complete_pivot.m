 function [L,U,P,Q] = lu_complete_pivot(A)

dim = length(A);

P = eye(dim);
Q = eye(dim);

for i=1:dim-1
    pivot = max(max(abs(A((i:dim),(i:dim)))));
    [x,y] = find(abs(A((i:dim),(i:dim))) == pivot);
    if i~=1
        x = x + (i-1);
        y = y + (i-1);
    end

    A([i,x],:) = A([x,i],:);
    A(:,[i,y]) = A(:,[y,i]);

    P([i,x],:) = P([x,i],:);
    Q(:,[i,y]) = Q(:,[y,i]);

    A(i+1:dim,i) = A(i+1:dim,i) / A(i,i);

    A(i+1:dim,i+1:dim) = A(i+1:dim,i+1:dim) - A(i,i+1:dim).*A(i+1:dim,i);
end

U = triu(A);
L = tril(A,-1) + eye(dim);
end