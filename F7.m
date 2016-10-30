function out = F7(xx,yy)
out = exp(-15*((xx-1/2).^2 + yy.^2)) + 1/2*exp(-20*((xx+1/2).^2 + (yy - 1/4).^2)) - 3/4*exp(-8*((xx+1/2).^2 + (yy+1/2).^2));
end