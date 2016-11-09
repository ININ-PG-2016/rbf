function out = F9(xx,yy)
  if (xx > 1.0 || xx < 0.0 || yy > 1.0 || yy < 0.0)
    out = 0;
  else
    f9len = 0.428881941299014;
    out = (xx.*exp(-xx.^2 -yy.^2)) ./ f9len;
  end
end