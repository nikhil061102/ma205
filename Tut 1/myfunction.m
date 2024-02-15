function y = myfunction(x)
y(1,1) = x(1) * x(1) +sin(x(3)) - log(x(2));
y(2,1) = x(2)*x(3) + cos(x(1)) - exp(x(2));
y(3,1) = x(1)*x(1)*x(2)*x(3) + x(1)*sin(x(2));
