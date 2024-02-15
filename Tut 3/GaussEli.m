function [Adash,Bdash] = GaussEli(A,B)
mat = [A B];
n = length(B);
for i=1:n
    for j = i+1:n
        m = mat(j,i)/mat(i,i);
        mat(j,:) = mat(j,:) - m*mat(i,:);
    end
end
Adash = mat(:,1:n);
Bdash = mat(:,n+1);
end