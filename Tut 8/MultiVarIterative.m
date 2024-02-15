syms x
syms y
format long

fprintf("You will have two equations in x and y which to be solved.\n");
fprintf("Write those in form of f(x,y) = 0 and g(x,y) = 0. \n");
fprintf("Then we can write them as iterative functions.\n");
fprintf("x_(n+1) = p(x_n,y_n) and y_(n+1) = q(x_n,y_n).\n");
fprintf("So now you have to input these two 'p' and 'q' expressions below :-\n");
p(x,y) = input('Enter your p(x,y) function : ');
q(x,y) = input('Enter your q(x,y) function : ');
x0 = input('Enter initial guess of x value of solution : ');
y0 = input('Enter initial guess of y value of solution : ');
e = input('Enter tolerance : ');
n = input('Enter no. of iterations : ');

for i = 1:n
    a0 = [x0; y0];
    x1 = double(p(x0,y0));
    y1 = double(q(x0,y0));
    a1 = [x1; y1];
    adash = [a0 a1];
    fprintf("x%d = %.8f & y%d = %.8f\n",i,x1,i,y1);
    if(norm(adash) < e)
        fprintf("Answer converges in %d iterations \n",i);
        break;
    end
    x0 = x1;
    y0 = y1;
end