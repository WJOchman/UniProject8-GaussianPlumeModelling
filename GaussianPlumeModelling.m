clear
clc
close all

%Known Variables%
Q = 0.1;
u = 4;
H = 30;
a = 104;
b = 0.894;
c = 61;
d = 0.911;
f = 0;

%sY Variables%
for y = [0:0.1:1]
    sY = a*(y^b);
    disp(sY);
end

%sZ Variables%
for z = [0:0.1:1]
    sZ = c*(z^d)+f;
    disp(sZ);
end

%Concentration Values%
for x = [0.1:0.1:1]
    y = Q/(pi.*(a*(x^b)).*(c*(x^d)+f).*u)*exp(-x^2/(2*(a*(x^b)).^2)-H^2/(2*(c*(x^d)+f).^2));
    disp(y);
end

%Display the Concentrations over distance%
    %d = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0];
    %C = [2.6142e-08 2.3664e-06 3.7257e-06 3.4501e-06 2.8580e-06 2.3208e-06 1.8941e-06 1.5648e-06 1.3103e-06 1.1114e-06];
    %plot(d, C, 'r-s');
    %xlabel('Distance (km)');
    %ylabel('Concentrations (kg/m^3)');
    %title('Distribution of Pollutants at Different Distances')
    %grid on;

%2D Contour Graph%
    %x = [0.1:0.1:1];
    %y = [0.1:0.1:1];
    %[X, Y] = meshgrid(x, y);
    %Z = Q./(pi.*(a*(X.^b)).*(c*(Y.^d)+f).*u)*exp(-Y.^2./(2*(a*(X.^b)).^2)-H^2./(2*(c*(Y.^d)+f).^2));
    %contourf(X, Y, Z);
    %xlabel('Distance_X (km)');
    %ylabel('Distance_Y (km)');
    %zlabel('Distribution of Pollutants at Different Distances');

%3D Graph%
    %x = [0.1:0.1:1];
    %y = [0.1:0.1:1];
    %[X, Y] = meshgrid(x, y);
    %Z = Q./(pi.*(a*(X.^b)).*(c*(Y.^d)+f).*u)*exp(-Y.^2./(2*(a*(X.^b)).^2)-H^2./(2*(c*(Y.^d)+f).^2));
    %surfc(X, Y, Z);
    %xlabel('Distance_X (km)');
    %ylabel('Distance_Y (km)'); 
    %zlabel('Distribution of Pollutants at Different Distances');