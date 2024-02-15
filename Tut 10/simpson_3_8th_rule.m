syms x
format long

f(x) = input('Enter the function : ');
a = input('Lower limit of integral (a) : ');
b = input('Upper limit of integral (b) : ');
n = input('No. of subintervals (n) : ');

if rem(n,3) ~= 0 
    fprintf("\nPlease enter valid n !!");
    n = input("\nEnter n as number divisible by 3: ");
end

h = (b-a)/n;

i = 0;
for x = a:h:b
    i = i +1;
    fn(i) = f(x);   
end

s0 = double(fn(1));
sn = double(fn(n+1));

s1 = 0;
for i = 2 : 3 : n-1
    s1 = s1 + double(fn(i));
end

s2 = 0;
for i = 3 : 3 : n
    s2 = s2 + double(fn(i));
end

s3 = 0;
for i = 4:3:n-2
    s3 = s3 + double(fn(i));
end

out = (3*h/8)*(s0 + 3*s1 + 3*s2 + 2*s3 + sn); 

fprintf("The value of integral is %f \n",out);