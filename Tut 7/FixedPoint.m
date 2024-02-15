syms x
format long

g(x) = input('Enter your function : ');
x0 = input('Enter initial guess of solution : ');
e = input('Enter tolerance : ');
n = input('Enter no. of iterations : ');

for i = 1:n
    x1 = double(g(x0));
    fprintf("x%d = %.8f \n",i,x1);
    if(abs(x1-x0) < e)
        fprintf("Answer converges in %d iterations \n",i);
        break;
    end
    x0 = x1;
end