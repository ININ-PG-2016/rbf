function out = inverse_multiquadric(r)
  out = 1./sqrt(1 + (r).^2);
end