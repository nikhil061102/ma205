function [L,U,P] = lu_partial_pivot(A)
n = length(A);
L=eye(n); P=L; U=A;
for k=1:n
    [extra, m]=max(abs(U(k:n,k)));
    m = m+k-1;
    if m ~= k
        U([m, k], :) = U([k, m], :);
        P([m, k], :) = P([k, m], :);
        if k > 1
            L([k,m],1:k-1) = L([m,k],1:k-1);
        end
    end
    for j = k+1:n
        L(j,k)=U(j,k)/U(k,k);
        U(j,:)=U(j,:)-L(j,k)*U(k,:);
    end
end