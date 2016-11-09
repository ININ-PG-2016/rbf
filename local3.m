function ret = local3(r)
    alpha = 10;
    ret = (r .* alpha <= 1).*((1 .- (r .* alpha)).^5).*((8 .* (r .* alpha).^2) .+ 5 .* (r .* alpha) .+ 1) + ((r .* alpha) > 1) .* 0;
endfunction