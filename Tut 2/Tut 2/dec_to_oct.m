function [out] = dec_to_oct(n)
factor = 1;
bin = 0;
while(n > 0)
    b = rem(n,8);
    bin = bin + b*factor;
    factor = factor*10;
    n = (n - rem(n,8))/8;
    
end
out = bin;
end