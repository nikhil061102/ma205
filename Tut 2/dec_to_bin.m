function [out] = dec_to_bin(n)
factor = 1;
bin = 0;
while(n > 0)
    b = rem(n,2);
    bin = bin + b*factor;
    factor = factor*10;
    n = (n - b)/2;
    
end
out = bin;
end