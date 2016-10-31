function out = rbf_poly2(x,y, phi, func)
A = zeros(length(x) + 6);
b = zeros(length(x) + 6, 1);
  
for i = 1:length(x)
  b(i) = feval(func, x(i), y(i));
  for j = 1:length(x)
    A(i,j) = feval(phi, sqrt((x(i) - x(j)).^2 + (y(i)-y(j)).^2));
  end
end
for i = 1:length(x)
  A(i,length(x) + 1) = 1;
  A(i,length(x) + 2) = x(i);
  A(i,length(x) + 3) = y(i);
  A(i,length(x) + 4) = x(i).^2;
  A(i,length(x) + 5) = y(i).^2;
  A(i,length(x) + 6) = x(i) .* y(i);
  A(length(x) + 1, i) = 1;
  A(length(x) + 2, i) = x(i);
  A(length(x) + 3, i) = y(i);
  A(length(x) + 4, i) = x(i).^2;
  A(length(x) + 5, i) = y(i).^2;
  A(length(x) + 6, i) = x(i) .* y(i);
end
out = A\b;
end