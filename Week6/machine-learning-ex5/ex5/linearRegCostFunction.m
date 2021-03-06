function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

htheta = X * theta;
n = size(theta,1);
J = 1/(2*m) * sum((htheta - y).^2) + lambda/(2 * m)*sum(theta(2:n) .^2);
temp = theta;
temp(1) = 0;
grad = 1/m * X' * (htheta - y) + lambda/m * temp;
%grad(1) = 1/m * sum((htheta - y) .* X(:,1));
%grad(2) = 1/m * sum((htheta - y) .* X(:,2)) + lambda/m*theta(2);











% =========================================================================

grad = grad(:);

end
