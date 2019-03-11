function plotData(X, y)

pos = find (y==1);
neg = find (y==0);

figure;
plot (X(pos,1), X(pos,2),'k+','LineWidth', 2, ...
'MarkerSize', 7)

 hold on;
 plot (X(neg,1), X(neg,2),'yo','LineWidth', 2, ...
'MarkerSize', 7)

 hold off
end

