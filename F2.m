function out = F2(xx,yy)
  if (xx > 1.0 || xx < 0.0 || yy > 1.0 || yy < 0.0)
    out = 0;
  else
    f2len = 0.222222217332887;
    out = (1/9 .* (tanh(9.*xx .- 9.*yy) .+ 1)) ./ f2len;
  end
end
