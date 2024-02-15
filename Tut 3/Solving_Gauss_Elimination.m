A = input("Given Coeffient Matrix : ");
B = input("Given Constant Matrix : ");
[l,b] = size(A);
n = length(B);
if ((l == b) && (l == n))
    [Ac,Bc] = GaussEli(A,B);
    X = backsub(Ac,Bc);

    for i=1:size(X)
        fprintf("X%d = %f\n",i,X(i));
    end
else
    fprintf("Input the above correctly !")
end