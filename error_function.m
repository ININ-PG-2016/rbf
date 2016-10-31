function ret = error_function(x, y, func1, func2)
  ret = abs(feval(func1, x, y) .- feval(func2, x, y));
endfunction