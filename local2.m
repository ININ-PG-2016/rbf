function ret = local2(r)
  if r > 1
    ret = 0;
  else
    ret = ((1 .- r).^3).*(3 .* r .+ 1);
  end
endfunction