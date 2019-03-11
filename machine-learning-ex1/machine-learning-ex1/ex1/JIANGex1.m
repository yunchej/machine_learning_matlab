clc
clear all
% data  = load ('ex1data1.txt');
data = load ('ex1data2.txt');
for k= 1:65
x = data(:,1:end-1); 
y = data (:,end);
n = size(data,2)-1; %the number of features
m = size(data, 1) ;% the number of traning examples

    alfa =  k* 0.03
theta = zeros(n+1,1);
% alfa = 0.01;
iteration = 300;

 [X_norm,mu,sigma] = JIANGfeatureNormalization (x);
 X = [ones(m,1),X_norm];
% [J] = JIANGcomputeCost(theta, X,y);

    
[theta, J_history,theta_history] = JIANGGradientDescent(theta, X,y,iteration,n,alfa);
x= 1:iteration;

plot(x, J_history,'-*')
hold on 
end 
hold off



