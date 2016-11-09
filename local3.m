function ret = local3(r)
  a = 10;
  if ((a .* r) > 1)
    ret = 0;
  else
    ret = ((1 .- (a .* r)).^5).*((8 .* (a .* r).^2) .+ 5 .* (a .* r) .+ 1);
  end
end