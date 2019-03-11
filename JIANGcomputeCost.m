function [J] = JIANGcomputeCost(theta, X,y)
% calculate the cost function 
m = length(y);
J = 0;
J  = 1/(2*m)*sum((X* theta - y).^2);
end

