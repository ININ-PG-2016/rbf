function ret = local3(r)
  if r > 1
    ret = 0;
  else
    ret = ((1 .- r).^5).*((8 .* r.^2) .+ 5 .* r .+ 1);
  end
endfunction