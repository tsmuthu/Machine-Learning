function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

for idx = 1:length(mu),
	mu(idx)= mean(X(:,idx));
end;
for idxsd = 1:length(sigma),
	sigma(idxsd) = std(X(:,idxsd));
end;

for numoffeature = 1: size(X,2),
	for idxds = 1: length(X),
		X_norm(idxds,numoffeature) = (X(idxds,numoffeature) - mu(numoffeature)) / sigma(numoffeature);
    end
end

%fprintf(' value: %f    %f\n',mu(:,1),mu(:,2));
fprintf(' x = [%f %f] \n', [X(1:10,:)]');
fprintf(' x_norm = [%f %f]\n', [X_norm(1:10,:)]');
%fprintf('%f',X_norm(:,1),);









% ============================================================

end
