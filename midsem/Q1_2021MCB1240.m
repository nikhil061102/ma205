format long

A = input("Input matrix A :");

[row,col] = size(A);
if (row ~= col)
    fprintf("The matrix A has to be square !!\n"); %The program stops if non-square matrix is entered
elseif ((-1*1e-8 < det(A)) && (det(A) < 1e-8)) %we find the determinant of A for checking non- singularity of A and since determinant for singular matrix matrix comes very close to 0 but not exactly 0 so we put a interval (-10^-8,10^-8) within which if determinant lies then we infer that det(A) was indeed 0)
    fprintf("The matrix A has to be non-singular for inverse to exist !!\n");
else
    n = length(A);
    I = eye(n);
    mat = [A I]; %concatenating A and identity matrix
    
    %here we make lower triangular half of matrix A equal to 0
    for i = 1:n
        for j = i+1:n
            m = mat(j,i)/mat(i,i);
            mat(j,:) = mat(j,:) - m*mat(i,:);
        end
    end

    %here we make upper triangular half of matrix A equal to 0
    for j=n:-1:2
        for i=j-1:-1:1
            m = mat(i,j)/mat(j,j);
            mat(i,:) = mat(i,:) - m*mat(j,:);
        end
    end

    %here we make diagonal elements of matrix A equal to 1 
    for k=1:n
        m = mat(k,k);
        mat(k,:) = mat(k,:)./m;
    end

    %finally we de-concatenate the matrix 'mat' and the second half of 'mat' gives us inverse of A
    invGauss = mat(:,n+1:2*n);
    fprintf("(a) The inverse of matrix A using Gauss Elimination - \n")
    disp(invGauss);

    invBuiltin = inv(A);
    fprintf("(b) The inverse of matrix A using built-in command inv(A) - \n")
    disp(invBuiltin);

    err = norm(invGauss-invBuiltin); %finding error using L2 norm from the two methods
    fprintf("(c) The Error between two results from (a) and (b) : %f \n",err);
end