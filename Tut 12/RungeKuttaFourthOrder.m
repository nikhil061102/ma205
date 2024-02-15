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

for i = 2:n+1
    k1 = h*f(x(i-1),y(i-1));
    k2 = h*f(x(i-1) + h/2 , y(i-1) + k1/2);
    k3 = h*f(x(i-1) + h/2 , y(i-1) + k2/2);
    k4 = h*f(x(i-1) + h , y(i-1) + k3);
    k = (k1 + 2*k2 + 2*k3 + k4)/6;
    
    x(i) = x(i-1)+h;
    y(i) = y(i-1)+k;
end

fprintf("Finally y value at x = %f = %f\n",x(n+1),y(n+1))