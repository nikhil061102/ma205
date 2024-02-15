syms x
syms y
format long

fprintf("You will have differential equations which is to be solved.\n");
fprintf("Write those in the form of dy/dx = f(x,y).\n");
f(x,y) = input('Enter your f(x,y) function : ');
x0 = input('Initial value of x in IVP : ');
y0 = input("Initial value of y in IVP : ");
h = input("Enter step value for x values : ");
X = input("Input x value at which y value has to be found: ");

n = (X-x0)/h;

x = zeros(n+1,1);
y = zeros(n+1,1);
x(1) = x0;
y(1) = y0;

% Formula for Euler-Forward Method ~ y(x_(k+1)) = y(x_k) + h*f(x_k,y_k)

for i = 2:n+1
    x(i) = x(i-1) + h;
    y(i) = y(i-1) + h*f(x(i-1),y(i-1));
end

fprintf("Finally y value at x = %f = %f\n",x(n+1),y(n+1))