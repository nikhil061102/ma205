syms x;
format long

X = input('Enter x : ');        
Y = input('Enter f(x) : ');      
p0 = input("Enter point of approximation: ");
n = length(X);
D = zeros(n,n);
D(:,1) = Y;
for j = 2:n
    for i = j:n
        D(i,j) = (D(i,j-1)-D(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
C = D(n,n);
for k = n-1:-1:1
    C = conv(C,poly(X(k)));
    m = length(C);
    C(m) = C(m) + D(k,k);
end
A = polyval(C,p0);
fprintf("Approximate value at x=%f = %f\n",p0,A);