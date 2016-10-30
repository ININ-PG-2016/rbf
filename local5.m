function ret = local5(r)
  if r > 1
    ret = 0;
  else
    ret = ((1 .- r).^4) .* (4 .* r .+ 1);
  end
endfunction