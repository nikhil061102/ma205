%plot3D.m
t= 0.05*pi: 0.05*pi: 2*pi;
x = sin(t.*t);
y = cos(1./t);
z = t;
subplot(221), plot3(x, y, z), grid on
subplot(222), plot3(x, y, z), grid on, view([0 0 2*pi])
subplot(223), plot3(x, y, z), grid on, view([0 2*pi 0])
subplot(224), plot3(x, y, z), grid on, view([2*pi 0 0])