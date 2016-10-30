function out = F10(xx,yy)
out = 3.*((1-xx).^2).*exp(-xx.^2 - (yy + 1).^2) .- 10.*(xx./5 .- xx.^3 .- yy.^5).*exp(-xx.^2 - yy.^2) .- 1./3.*exp(-(xx.+1).^2 .- yy.^2);
end