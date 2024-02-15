syms x
format long

f(x) = input('Enter the function : ');
a = input('Lower limit of integral (a) : ');
b = input('Upper limit of integral (b) : ');

fnew(x) = f((b-a)*x/2 + (a+b)/2);
factor = (b-a)/2;  % when x = (a-b)u/2 + (a+b)/2 is done so dx = (a-b)/2*du hence factor has to be multiplied 

%Gauss 1-point formula
g11 = fnew(0);
int1 = (2*g11)*factor;

%Gauss 2-point formula
g21 = fnew(1/sqrt(3));
g22 = fnew(-1/sqrt(3));
int2 = (1*g21 + 1*g22)*factor;

%Gauss 3-point formula
g31 = fnew(sqrt(3/5));
g32 = fnew(0);
g33 = fnew(-sqrt(3/5));
int3 = ((5/9)*g31 + (8/9)*g32 + (5/9)*g33)*factor;

fprintf("Integral acc to 1-point gauss legendre quadrature is %f\n",int1);
fprintf("Integral acc to 2-point gauss legendre quadrature is %f\n",int2);
fprintf("Integral acc to 3-point gauss legendre quadrature is %f\n",int3);