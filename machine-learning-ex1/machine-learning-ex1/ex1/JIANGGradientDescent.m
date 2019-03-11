function [theta,J_history,theta_history] = JIANGGradientDescent(theta, X, y,iteration,n,alfa)
% calculate new theta in each loop
m = length(y);
J_history = zeros(iteration,1);
theta_history = zeros(iteration, n+1)
for i = 1 : iteration
   [J_history(i,1) ]= JIANGcomputeCost(theta, X, y);
    [theta_history(i,:)] = theta;
 for j = 1: n+1   
theta(j,1) = theta(j,1) - alfa/m * sum((X * theta  - y) .* X(:,j));

 end
 
end
end

