syms x
format long

f(x) = input('Enter the function : ');
a = input('Lower limit of integral (a) : ');
b = input('Upper limit of integral (b) : ');
n = input('No. of subintervals (n) : ');

if rem(n,2) == 1 
    fprintf("\nPlease eneter valid n !!");
    n = input("\nEnter n as even number : ");
end

h = (b-a)/n;

i = 0;
for x = a:h:b
    i = i +1;
    fn(i) = double(f(x));   
end

s0 = double(fn(1));
sn = double(fn(n+1));

so = 0;
for i = 2 : 2 : n
    so = so + double(fn(i));
end

se = 0;
for i = 3 : 2 : n-1
    se = se + double(fn(i));
end

out = (h/3)*(s0 + sn + 2*so + 4*se);

fprintf("The value of integral is %f \n",out);