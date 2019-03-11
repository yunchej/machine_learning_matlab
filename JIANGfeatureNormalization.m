function [X_norm,mu,sigma] = JIANGfeatureNormalization (x)
% do standard normalization to data to range it from -1 to 1
 mu = mean(x);       %  mean value 
 sigma = std(x);     %  standard deviation
 X_norm  = (x - repmat(mu,size(x,1),1)) ./  repmat(sigma,size(x,1),1);
end