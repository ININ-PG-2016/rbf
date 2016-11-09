function ret = local2(r)
    alpha = 5;
    ret = (r .* alpha <= 1) .* ((1 .- (r .* alpha)).^3).*(3 .* (r .* alpha) .+ 1) + ((r .* alpha) > 1) .* 0;
endfunction