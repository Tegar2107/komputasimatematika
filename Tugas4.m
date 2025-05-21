clc; clear; close all;

% % 1. Line Plot (2D)
x = linspace(0, 2*pi, 100);
y = sin(x);
figure;
plot(x, y, 'b-', 'LineWidth', 2);
title('1. Line Plot');
xlabel('x'); ylabel('sin(x)');

% % 2. Scatter Plot (2D)
x = rand(1, 100);
y = rand(1, 100);
figure;
scatter(x, y, 'filled');
title('2. Scatter Plot');

% % 3. Bar Plot (2D)
data = [5 10 15 20 25];
figure;
bar(data);
title('3. Bar Plot');
xlabel('Category'); ylabel('Value');

% % 4. Histogram (2D)
x = randn(1000,1);
y = randn(1000,1);

figure;
hist3([x y], 'Nbins', [30 30]);  % jumlah bin untuk x dan y
xlabel('X'); ylabel('Y'); zlabel('Count');
title('Histogram 2D dengan hist3');

% Tambahan (untuk membuat tampilan seperti heatmap)
set(gcf,'renderer','opengl');
set(get(gca,'child'),'FaceColor','interp','CDataMode','auto');
colorbar;

% % 5. Pie Chart (2D)
data = [30 20 25 25];
figure;
pie(data, {'A', 'B', 'C', 'D'});
title('5. Pie Chart');

% % %6. Area Plot (2D)
x = 1:10;
y = cumsum(rand(1,10));
figure;
area(x, y);
title('6. Area Plot');

% %  7. Polar Plot (2D)
theta = linspace(0, 2*pi, 200);
rho = 1 + 0.5 * sin(3*theta);  % fungsi polar

figure;
polar(theta, rho, 'm--');  % gunakan polar klasik
title('Polar Plot dengan Fungsi Non-Linear (polar klasik)');


% % 8. 3D Surface Plot
[x, y] = meshgrid(-5:0.5:5, -5:0.5:5);
z = sin(sqrt(x.^2 + y.^2));
figure;
surf(x, y, z);
title('8. 3D Surface Plot');

% % 9. 3D Mesh Plot
figure;
mesh(x, y, z);
title('9. 3D Mesh Plot');

% % 10. 3D Scatter Plot
x = randn(100,1);
y = randn(100,1);
z = randn(100,1);
figure;
scatter3(x, y, z, 36, z, 'filled');
title('10. 3D Scatter Plot');
xlabel('X'); ylabel('Y'); zlabel('Z');

% % 11. Stem Plot (2D)
x = 0:0.1:2*pi;
y = sin(x);
figure;
stem(x, y, 'filled');
title('11. Stem Plot');
xlabel('x'); ylabel('sin(x)');

% % 12. Stairs Plot (2D)
x = 0:10;
y = randi([1, 10], 1, 11);
figure;
stairs(x, y);
title('12. Stairs Plot');
xlabel('Index'); ylabel('Value');

% % 13. Erorbar plot (2D)
x = 1:10;
y = rand(1, 10)*10;
err = rand(1, 10);
figure;
errorbar(x, y, err, 'o-');
title('13. Errorbar Plot');

% % 14. Logarithmic Plot (semilogx)
x = logspace(0.1, 2, 100);
y = log(x);
figure;
semilogx(x, y);
title('14. Semilog X Plot');
xlabel('x'); ylabel('log(x)');

% % 15. Logarithmic Plot(semilogy)
x = 1:100;
y = exp(0.05*x);
figure;
semilogy(x, y);
title('15. Semilog Y Plot');
xlabel('x'); ylabel('exp(0.05x)');

% %  16. Log Log Plot
x = logspace(0.1, 2, 100);
y = x.^2;
figure;
loglog(x, y);
title('16. Log-Log Plot');
xlabel('x'); ylabel('x^2');

% % 17.Contour Plot 
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
z = x.^2 + y.^2;
figure;
contour(x, y, z, 20);
title('17. Contour Plot');
xlabel('x'); ylabel('y');

% % 18. Filled Countour Plot
figure;
contourf(x, y, z, 20);
colorbar;
title('18. Filled Contour Plot');

% % 19.Quiver Plot(Vector Field)
[x, y] = meshgrid(-2:0.5:2, -2:0.5:2);
u = x;
v = y;
figure;
quiver(x, y, u, v);
title('19. Quiver Plot');
xlabel('x'); ylabel('y');

% % 20. Compass Plot 
z = randn(1, 10) + 1i*randn(1, 10);
figure;
compass(z);
title('20. Compass Plot');
