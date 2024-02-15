syms x;
format long

x = input('Enter x : ');        
y = input('Enter f(x) : ');      
X = input("Enter point of approximation: ");
n = length(x);
D = zeros(n,n);
D(:,1) = y';
for j = 2:n
    for i = 1:n-j+1
        D(i,j) = (D(i+1,j-1)-D(i,j-1))/(x(i+j-1)-x(i));
    end
end
for i = 1:n-1
    P(i) = prod(X-x(:,1:i))*D(1,i+1);
end
answer = y(1) + sum(P);

fprintf("Approximate value at x=%f = %f\n",X,answer);