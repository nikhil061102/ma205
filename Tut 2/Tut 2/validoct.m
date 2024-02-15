function [out] = validoct(in)

flag = 1;
while (in > 0)
    r = rem(in,10);
    q = (in - r)/10;
    if(r == 8 || r == 9)
        flag = 0;
        break
    end
    in = q;
end
out = flag;
end