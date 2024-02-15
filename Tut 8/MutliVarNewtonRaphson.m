% Define the system of equations
f1 = @(x, y, z) 10*x + sin(x+y) - 1;
f2 = @(x, y, z) 8*y - (cos(z-y))^2 - 1;
f3 = @(x, y, z) 12*z - sin(z) - 1;

% Define the initial guess
x0 = 0.1;
y0 = 0.25;
z0 = 1/12;
x = [x0; y0; z0];

% Set the convergence criteria
tol = 1e-6;
max_iter = 1000;

% Implement the Newton-Raphson method
for i = 1:max_iter
    % Compute the Jacobian matrix
    J = [10+cos(x0+y0), cos(x0+y0), 0;
         0, 8-2*cos(z0-y0)*sin(z0-y0), 2*cos(z0-y0)*sin(z0-y0);
         0, 0, 12+cos(z0)];
     
    % Compute the function values and the update direction
    F = [f1(x(1), x(2), x(3));
         f2(x(1), x(2), x(3));
         f3(x(1), x(2), x(3))];
    delta_x = -J\F;
    
    % Check for convergence
    if norm(delta_x) < tol
        fprintf('Converged after %d iterations.\n', i);
        break;
    end
    
    % Update the guess
    x = x + delta_x;
    x0 = x(1);
    y0 = x(2);
    z0 = x(3);
    
    % Display the iteration information
    fprintf('Iteration %d: x = %f, y = %f, z = %f.\n', i, x0, y0, z0);
end
