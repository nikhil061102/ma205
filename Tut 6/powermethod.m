function [output] = powermethod(A,x,error)
n = size(A,1);
y = A*x;
nm = norm(y,Inf);
max = y(1);
for i=1:n
    if (max < y(i))
        max = y(i);
    end
end
max
x = (1/max)*y;
x
while(nm > error)
    y = A*x;
    nm = norm(y,Inf);
    max = y(1);
    for i=1:n
        if (max < y(i))
            max = y(i);
        end
    end
    x = (1/max)*y;

end

end