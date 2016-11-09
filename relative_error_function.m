function ret = relative_error_function(x, y, exact, interp)
  exactVal = feval(exact, x, y);
  interpVal = feval(interp, x, y);
  ret = abs(exactVal .- interpVal) ./ (abs(exactVal) .+ 0.1);
endfunction