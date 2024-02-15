syms x;
format long

X = input('Enter x : ');        
Y = input('Enter f(x) : ');      
Y1 = input("Enter f'(x) : ");  

n=length(X);

P=0; %to initiate Hermite polynomial

for k=1:n
% Langrange fundamental polynomial
L=1;% to initiate langrange polynomial
LL=1; %For L^2
    for i=1:n
        if i~=k
            L = L*((x-X(i))/(X(k)-X(i)));
            %LL = LL * ((x-X(i))/(X(k)-X(i)))^2;
        end
    end
LL = L^2;

%differentiation of Langrange polynomial
dL = diff(L,x);

% to evaluate polynomial value at point
L1 = inline(L,'x');   
dL1 = inline(dL,'x');
xk= X(k);

% coefficient of f(xk)
A = (1 - 2*(x -xk)*dL1( xk) )* LL; 

% coefficient of f'(xk)
B = (x- xk)* LL; 

P = P + A* Y(k) +B*Y1(k);
end

P = simplify(P);

% to evaluate polynomial value at point
P = inline(P,'x');
P
t = input('Enter the value at which you want the value of interpolating polynomial : ');
P(t)