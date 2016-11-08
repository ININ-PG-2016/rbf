function out = rbf_poly2_eval(x, y, points, phi, coef)
  n = length(points);
  out = 0;
  for i = 1:n
    out = out + coef(i) * feval(phi, sqrt((x - points(i, 1)).^2 + (y - points(i, 2)).^2));
  end
  out = out .+ coef(n + 1) .+ coef(n + 2) .* x .+ coef(n + 3) .* y .+ coef(n + 4) .* x.^2 .+ coef(n + 5) .* y.^2 .+ coef(n + 6) .* x .* y;
end