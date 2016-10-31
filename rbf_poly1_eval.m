function out = rbf_poly1_eval(xx, yy, x,y, phi, coef)
  out = 0;
  for i = 1:length(x)
    out = out + coef(i) * feval(phi, sqrt((xx - x(i)).^2 + (yy-y(i)).^2));
  end
  out = out .+ coef(length(x) + 1) .+ coef(length(x) + 2) .* xx .+ coef(length(x) + 3) .* yy;
end