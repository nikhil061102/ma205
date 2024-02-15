function [X] = JacEigen(A,maxiter)

n = length(A);
B = A;
it = 0;
S = eye(n);
while it<maxiter
    a=0; b=0; max=0;
    for i=1:n-1
        for j=i+1:n
            if max<abs(B(i,j))
                max=abs(B(i,j));
                a=i;b=j;
            end
        end
    end

    if B(a,a)==B(b,b)
        if B(a,b)>0
            theta = pi/4;
        end
        if B(a,b)<0
            theta = -pi/4;
        end
    else
        theta = 0.5*atan(2*B(a,b)/(B(a,a)-B(b,b)));
    end
    S1 = eye(n);
    S1(a,a) = cos(theta);
    S1(b,b) = cos(theta);
    S1(a,b) = -sin(theta);
    S1(b,a) = sin(theta);

    B = (S1.')*B*S1;
    S = S*S1;
    it = it + 1;
end

X = B;
end