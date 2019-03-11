function p = predict(theta, X,y)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
P = zeros(m, 1);
prob = X * theta; %m by 3 * 3 by 1 = m by 1
pos = find(prob >= 0.5);
neg = find( prob < 0.5);
P(pos) = 1;
P(neg) = 0;

correct = find(P == y);
p = length(correct)/length(y);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%







% =========================================================================


end
