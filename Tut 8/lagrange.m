syms x;
format long

X = input('Enter x : ');        
Y = input('Enter f(x) : ');      

n=length(X);
L = zeros(n,n);

for i=1:n
    V = 1;
    for j=1:n
        if i~=j 
            V = conv(V,poly(X(j)))/(X(i)-X(j));
        end
    end
    L(i,:) = V*Y(i);
end
L;
P = sum(L);
F = flip(P);
for k = n:-1:2
    fprintf('+(%.8fx^%d)',F(k),k-1);
end
fprintf('+(%.8f)\n',F(1));
x = input("Find the value of x at which y value has to be approximated: ");
A = polyval(P,x);
fprintf("Value of function at x = %f = %f\n",x,A)