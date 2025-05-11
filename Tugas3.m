clc;
clear;
% % Nomor 1
% % Matriks A dan vektor b
% A = [10 -1  2  0;
%      -1 11 -1 3;
%       2 -1 10 -1;
%       0  3 -1 8];
% 
% b = [6; 25; -11; 15];
% 
% 
% % Toleransi dan iterasi maksimum
% tol = 1e-5;
% max_iter = 100;
% 
% % Inisialisasi
% x_jacobi = zeros(4,1);
% x_gs = zeros(4,1);
% 
% % Judul kolom hasil
% fprintf('Iterasi Jacobi:\n');
% fprintf('%5s %12s %12s %12s %12s\n', 'Iter', 'x1', 'x2', 'x3', 'x4');
% 
% % Jacobi
% x_old = x_jacobi;
% for k = 1:max_iter
%     x_new = zeros(4,1);
%     x_new(1) = (1/10)*(6 + x_old(2) - 2*x_old(3));
%     x_new(2) = (1/11)*(25 + x_old(1) + x_old(3) - 3*x_old(4));
%     x_new(3) = (1/10)*(-11 - 2*x_old(1) + x_old(2) + x_old(4));
%     x_new(4) = (1/8)*(15 - 3*x_old(2) + x_old(3));
% 
%     fprintf('%5d %12.6f %12.6f %12.6f %12.6f\n', k, x_new);
% 
%     if norm(x_new - x_old, inf) < tol
%         break;
%     end
%     x_old = x_new;
% end
% 
% fprintf('Solusi metode Jacobi:\n');
% disp(x_new);
% 
% % Separator
% fprintf('\n');
% 
% % Gauss-Seidel
% fprintf('Iterasi Gauss-Seidel:\n');
% fprintf('%5s %12s %12s %12s %12s\n', 'Iter', 'x1', 'x2', 'x3', 'x4');
% 
% for k = 1:max_iter
%     x_old = x_gs;
% 
%     x_gs(1) = (1/10)*(6 + x_gs(2) - 2*x_gs(3));
%     x_gs(2) = (1/11)*(25 + x_gs(1) + x_gs(3) - 3*x_gs(4));
%     x_gs(3) = (1/10)*(-11 - 2*x_gs(1) + x_gs(2) + x_gs(4));
%     x_gs(4) = (1/8)*(15 - 3*x_gs(2) + x_gs(3));
% 
%     fprintf('%5d %12.6f %12.6f %12.6f %12.6f\n', k, x_gs);
% 
%     if norm(x_gs - x_old, inf) < tol
%         break;
%     end
% end
% 
% fprintf('Solusi metode Gauss-Seidel:\n');
% disp(x_gs);

% % Nomor 2
% x = 0:0.1:1;
% f = [0 0.002 0.016 0.054 0.128 0.25 0.432 0.686 1.024 1.458 2];
% 
% 
% % Data dari tabel
% x = 0:0.1:1;
% f = [0 0.002 0.016 0.054 0.128 0.25 0.432 0.686 1.024 1.458 2];
% h = 0.1;
% 
% % 1. Riemann kiri
% riemann_kiri = h * sum(f(1:end-1));
% 
% % 2. Riemann kanan
% riemann_kanan = h * sum(f(2:end));
% 
% % 3. Aturan Trapesium
% trapesium = (h/2) * (f(1) + 2*sum(f(2:end-1)) + f(end));
% 
% % Tampilkan hasil
% fprintf('Luas dengan penjumlahan Riemann kiri    = %.5f\n', riemann_kiri);
% fprintf('Luas dengan penjumlahan Riemann kanan   = %.5f\n', riemann_kanan);
% fprintf('Luas dengan aturan trapesium            = %.5f\n', trapesium);



