function out = rbf(points, values, phi)
  n = length(points);
  A = zeros(n);
  b = zeros(n, 1);
  
  for i = 1:n
    b(i) = values(i);
    for j = 1:n
      A(i,j) = feval(phi, sqrt((points(i,1) - points(j,1)).^2 + (points(i,2) - points(j,2)).^2));
    end
  end
  
  out = A\b;
end