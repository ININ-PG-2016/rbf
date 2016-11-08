function out = rbf_poly2(points, values, phi)
  n = length(points);
  A = zeros(n + 6);
  b = zeros(n + 6, 1);
  
  for i = 1:n
    b(i) = values(i);
    for j = 1:n
      A(i,j) = feval(phi, sqrt((points(i, 1) - points(j, 1)).^2 + (points(i, 2) - points(j, 2)).^2));
    end
  end
  for i = 1:n
    A(i, n + 1) = 1;
    A(i, n + 2) = points(i, 1);
    A(i, n + 3) = points(i, 2);
    A(i, n + 4) = points(i, 1).^2;
    A(i, n + 5) = points(i, 2).^2;
    A(i, n + 6) = points(i, 1) .* points(i, 2);
    A(n + 1, i) = 1;
    A(n + 2, i) = points(i, 1);
    A(n + 3, i) = points(i, 2);
    A(n + 4, i) = points(i, 1).^2;
    A(n + 5, i) = points(i, 2).^2;
    A(n + 6, i) = points(i, 1) .* points(i, 2);
  end
  
  out = A\b;
end