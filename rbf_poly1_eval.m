function out = rbf_poly1_eval(x, y, points, phi, coef)
  n = length(points);
  out = 0;
  for i = 1:n
    out = out + coef(i) * feval(phi, sqrt((x - points(i, 1)).^2 + (y - points(i, 2)).^2));
  end
  out = out .+ coef(n + 1) .+ coef(n + 2) .* x .+ coef(n + 3) .* y;
end