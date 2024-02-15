syms x

f(x) = input('Enter the function : ');
p0 = input('Enter initial approximation : ');
tol= input('Enter tolerance : ');

df(x) = diff(f,x);

error=realmax; 
count=0; 
while error >tol
    p = p0 - (f(p0)/df(p0));
    error = double(abs(double(f(p))));
    count = count + 1;
    p0 = p;

    iterations(count)=count;
    x_n(count)=double(p0);
    fx_n(count)=double(f(p0));
    dfx_n(count)=double(df(p0));
    error1(count)=error;
end
double(p);
 
T = table(iterations',x_n',fx_n',dfx_n', error1');
T.Properties.VariableNames = {'Iterations','x_n','f(x_n)','df(x_n)','tolerence'};
T