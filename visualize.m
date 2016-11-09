function out = visualize(f, xMin, xMax, yMin, yMax, xStep, yStep)
x = xMin:xStep:xMax;
y = yMin:yStep:yMax;

[xx,yy] = meshgrid(x,y);

z = feval(f,xx,yy);
figure;
surf(x,y,z)
view(3);
colormap cool
%print('out', '-dpng')
out = 0;
end

