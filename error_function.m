function ret = error_function(x, y, ptsX, ptsY, phi, coef, func)
  ret = abs(rbf_eval(x, y, ptsX, ptsY, phi, coef) .- feval(func, x, y));
endfunction