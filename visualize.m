function out = visualize(f, xMin, xMax, yMin, yMax, xStep, yStep)
x = xMin:xStep:xMax;
y = yMin:yStep:yMax;

[xx,yy] = meshgrid(x,y);

z = feval(f,xx,yy);
figure;
view(3)
surface(x,y,z);
out = 0;
end

