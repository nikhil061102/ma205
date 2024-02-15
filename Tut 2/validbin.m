function [out] = validbin(in)

flag = 1;
while (in > 0)
    r = rem(in,10);
    q = (in - r)/10;
    if(r ~= 0 && r ~= 1)
        flag = 0;
        break
    end
    in = q;
end
out = flag;
end