syms x
format short

f(x) = input('Enter the function : ');
a = input('Lower limit of integral (a) : ');
b = input('Upper limit of integral (b) : ');
n = input('No. of subintervals (n) : ');

h = (b-a)/n;
i = 1:1:n-1;
S = f(a+i.*h);
out = (h/2).*(f(a) + 2.*sum(S) + f(b));

fprintf("The value of integral is %f \n",out);
