function out = visualize(f, xMin, xMax, yMin, yMax, xStep, yStep)
x = xMin:xStep:xMax;
y = yMin:yStep:yMax;

[xx,yy] = meshgrid(x,y);

z = feval(f,xx,yy);
figure;
surface(x,y,z)
view(3);
%print('out', '-dpng')
out = 0;
end

