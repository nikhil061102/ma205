syms x
format long

f(x) = input('Enter the function : ');
x0 = input('Initial first approx of solution : ');
x1 = input('Initial second approx of solution : ');
tol = input('Enter tolerance : ');
tot_iter = input('Total no. of iterations : ');

for i=1:tot_iter
    x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    fprintf("x%d = %.8f\n",i,x2);
    if(abs(x2-x1)<tol)
        break
    end
    x0 = x1;
    x1 = x2;
end

fprintf("Finally after %d iterations, the final answer is %f. \n",iter,x0);