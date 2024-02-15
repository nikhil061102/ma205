f=input('enter the function');
df=input('Enter the deriv function');
p0=input('Enter the IA');
tol=10^-3;
%df=diff(f,x);
error=1;
count=0;
while error>tol
    p=p0-f(p0)/df(p0);
    error=abs(p-p0);
    count=count+1;
    p0=p;
end 
display(p0);
count