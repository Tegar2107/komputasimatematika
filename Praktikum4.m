%Menentukan nilai mahasiswa (A, B, C, D, atau E) berdasarkan range nilai dengan nested if.
nilai = 60; % Input nilai

if nilai >= 85
    disp('Grade: A');
else
    if nilai >= 70
        disp('Grade: B');
    else
        if nilai >= 55
            disp('Grade: C');
        else
            if nilai >= 40
                disp('Grade: D');
            else
                disp('Grade: E');
            end
        end
    end
end

%Menghitung faktorial dari sebuah bilangan (n!) dengan while
n = 10; % Input bilangan
faktorial = 1;
i = 1;

while i <= n
    faktorial = faktorial * i;
    i = i + 1;
end

disp(['Faktorial dari ', num2str(n), ' adalah: ', num2str(faktorial)]);