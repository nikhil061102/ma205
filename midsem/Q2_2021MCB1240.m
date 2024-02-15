format short

A = input("Input matrix A :");

[row,col] = size(A);

if (row ~= col)
    fprintf("The matrix A has to be square !!\n");  %The program stops if non-square matrix is entered
else
    n = length(A);
    x_init = ones(n,1);  %x_init is initial guess vector which here is (1,1,1,...)1xn 
    err = 1e-7;  %err is error tolerance which here is 10^-7
    
    %We input the matrix 'A', inital guess 'x_init' and error tolerance 'err' into function and it outputs the inverse of minimum eigenvalue and corresponding eigenvector  
    [invmineigval,eigvector] = MinimumEigenvaluePowerMethod(A,x_init,err); 
    mineigval = 1/invmineigval;
    fprintf("The min eigen value from Power Method is %f. \n", mineigval);
   
    %displaying all eigenvalues of matrix A 
    fprintf("Eigenvalues of A - \n"); 
    disp(eig(A));
    fprintf("The min eigen-value from built-in function 'eig' is %f.\n",min(eig(A)));
end