function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

theta1 =0;
theta2 =0;
for idx = 1:m,
  theta1 = theta1 + (theta(1)* X(idx,1) + theta(2) * X(idx,2) - y(idx));
  theta2 = theta2 + (theta(1)* X(idx,1) + theta(2) * X(idx,2) - y(idx)) * X(idx,2);
end;
costdiff1 = alpha/m *(theta1);
costdiff2 = alpha/m *(theta2);

theta(1) = theta(1) - costdiff1;
theta(2) = theta(2) - costdiff2;






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
