format long

x = input("Input your values of x : ");
y = input("Input corresponding y values : ");
X = input("Input value of x at which y value has to be found: ");

nx = length(x);
ny = length(y);
if nx ~= ny 
    fprintf("Enter valid entries! No. of x values should be equal to that of y!!");
else
    n = nx;
    h = x(2)-x(1);
    u = (X-x(1))/h;

    D = zeros(n,n);
    D(:,1) = y';
    
    for j = 2:n
        for i = 1:(n-j+1)
            D(i,j) = D(i+1,j-1)-D(i,j-1);
        end
    end
    
    G = u;
    A = y(1);
    for k = 1:n-1
        A = A+G*D(1,k+1);
        G = (u-k)*G/(k+1);
    end

    fprintf("Value of y at X = %f is %f\n", X, A);
end