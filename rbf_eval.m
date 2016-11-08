function out = rbf_eval(x, y, points, phi, coef)
  out = 0;
  for i = 1:length(points)
    out = out + coef(i) * feval(phi, sqrt((x - points(i,1)).^2 + (y - points(i,2)).^2));
  end
end