function [out] = oct_to_dec(no)
factor = 1;
dec = 0;
while (no > 0)
    rm = rem(no,10);
    qu = (no - rm)/10;
    dec = dec + factor*rm;
    factor = factor*8;
    no = qu;
end
   
out = dec;
end