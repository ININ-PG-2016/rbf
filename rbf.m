function out = rbf(x,y, phi, func)
A = zeros(length(x));
b = zeros(length(x), 1);
  
for i = 1:length(x)
  b(i) = feval(func, x(i), y(i));
  for j = 1:length(x)
    A(i,j) = feval(phi, sqrt((x(i) - x(j)).^2 + (y(i)-y(j)).^2));
  end
end
out = A\b;
end