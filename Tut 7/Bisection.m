syms x
format long

f(x) = input('Enter the function : ');
a = input('Left side of interval : ');
b = input('Right side of interval : ');
tol= input('Enter tolerance : ');
tot_iter = input('Total no. of iterations : ');

x0 = (a+b)/2;
err = realmax;
iter = 0;

if(a > b)
    fprintf("Wrong input for intial interval.")
else
    while(err >= tol && iter <= tot_iter)
        if f(a)*f(x0) < 0 
            b = x0;
        else 
            a = x0;
        end

        x0 = (a+b)/2;
        err = double(abs(double(f(x0))));
        iter = iter + 1;

        iterations(iter)=iter;
        atab(iter) = a;
        btab(iter) = b;
        x_n(iter)=double(x0);
        fx_n(iter)=double(f(x0));
        error1(iter)=double(err);
    end
end

T = table(iterations',atab', btab', x_n',fx_n', error1');
T.Properties.VariableNames = {'Iterations','a','b','x_n','f(x_n)','tolerence'};
T

fprintf("Finally after %d iterations, the final answer is %f. \n",iter,x0);