clc;
clear all ;
%initialization
swarm_size = 64;                    %Jumlah Partikel
maxIter = 100;                      %
inertia = 1.0;
correction_factor = 2.0;
%posisi awal swarm
a = 1:8;
[X,Y] = meshgrid(a,a);
C = cat(2, X', Y');
D = reshape(C,[],2);
swarm(1:swarm_size,1,1:2)= D ;
swarm(:,2,:) = 0;                       %posisi awal partikel
swarm(:,4,1) = 1000;
plotObjFcb = 1;
%Fungsi
objfcn = @(x)0.5*((x(:,1).^4)-16*(x(:,1).^2)+5*(x(:,1)))+0.5*((x(:,2).^4)-16*(x(:,2).^2)+5*(x(:,2)));


tic;
%iterasi PSO
for iter = 1:maxIter
    swarm(:, 1, 1) = swarm(:, 1, 1) + swarm(:, 2, 1);
    swarm(:, 1, 2) = swarm(:, 1, 2) + swarm(:, 2, 2);
    x = swarm(:, 1, 1);
    y = swarm(:, 1, 2);
    fval = objfcn([x y]);
    
    for i = 1:swarm_size
        if fval(i,1) < swarm(i, 4, 1)
            swarm(i, 3, 1) = swarm(i, 1, 1);
            swarm(i, 3, 2) = swarm(i, 1, 2);
            swarm(i, 4, 1) = fval(i,1);
        end
    end
    
    [~, gbest] = min(swarm(:, 4, 1));
    
            %Update velocity
     swarm(:, 2, 1)= inertia*(rand(swarm_size,1).*swarm(:, 2, 1)) + correction_factor*(rand(swarm_size,1).*(swarm(:, 3, 1)...
         - swarm(:, 1, 1))) + correction_factor*(rand(swarm_size,1).*(swarm(gbest, 3, 1) - swarm(:, 1, 1)));
     swarm(:, 2, 2)= inertia*(rand(swarm_size,1).*swarm(:, 2, 2)) + correction_factor*(rand(swarm_size,1).*(swarm(:, 3, 2)...
         - swarm(:, 1, 2))) + correction_factor*(rand(swarm_size,1).*(swarm(gbest, 3, 2) - swarm(:, 1, 2)));
     
     %partikel
     clf;plot(swarm(:, 1, 1), swarm(:, 1, 2), 'x'); grid
     axis([-4 4 -4 4]);
     pause(.5);
     disp(['Iteration:' num2str(iter)]);
     % hold on
end
toc
%plot
if plotObjFcb
    ub = -4;
    lb = 4 ;
    npoints = 1000;
    x = (ub-lb).* rand(npoints,2)+ lb;
    for i = 1:npoints
        f = objfcn([x(i,1) x(i,2)]);
        plot3(x(i, 1),x(i, 2),f ,'.r'); hold on
    end
    plot3(swarm(1, 3, 1), swarm(1, 3, 2), swarm(1, 4, 1),'xb','linewidth',5,'Markersize',5);grid
    hold on
end

x
xg=min(x)