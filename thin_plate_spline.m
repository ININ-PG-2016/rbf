function out = thin_plate_spline(r)
  if r == 0
    out = 0;
  else
    out = (r.^2).*log(r);
  end
end