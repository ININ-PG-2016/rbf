function out = rbf_eval(xx, yy, x,y, phi, coef)
  out = 0;
  for i = 1:length(x)
    out = out + coef(i) * feval(phi, sqrt((xx - x(i)).^2 + (yy-y(i)).^2));
  end
end