%Addmatrix.m

a = input('Enter a matrix: ');
b = input('Enter another matrix of same size as above: ');
if(size(a) == size(b))
    c = a + b
else
    fprintf('size of both the matrices is not same')
end