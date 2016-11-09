function out = F8(xx,yy)
xx = (xx .+ 2) .* 4;
yy = (yy .+ 2) .* 4;
out = sin(3.*xx).*cos(3.*yy);
out = (out .+ 1) ./ 2;
end