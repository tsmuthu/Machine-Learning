function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

cost = 0;
%fprintf('theta value : %f, %f\n', theta(1),theta(2));
for idx = 1:m, 
	cost =  cost + ((theta(1)*X(idx,1) + (theta(2) * X(idx,2)) ) - y(idx))^2;
	%cost = cost + ( theta' * X(idx) )
end;
%fprintf('cost = %f m = %f\n', cost,m);
J = (1 / (2 * m) ) * cost;




% =========================================================================

end
