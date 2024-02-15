eps = double(1.0);
while(1 < 1+eps)
    eps = eps*0.5;
end
eps = eps*2;
fprintf("The machine epsilon of this system is %E\n",eps);