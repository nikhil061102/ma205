%concentric_circles.m
x = -1: 0.01: 1;
y= -1: 0.01: 1;
[x,y] = meshgrid(x,y);
z = x.^2 + y.^2;

subplot(221), contour(x, y, z)