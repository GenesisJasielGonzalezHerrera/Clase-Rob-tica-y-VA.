close all;
clear;
clc;


datos = inputdlg({'Longitud eslabon 1:', ...
                  'Longitud eslabon 2:', ...
                  'Longitud eslabon 3:', ...
                  'Angulo articulacion 1 [grados]:', ...
                  'Angulo articulacion 2 [grados]:', ...
                  'Angulo articulacion 3 [grados]:'}, ...
                  'Datos del robot', ...
                  [1 40], ...
                  {'1','2','1.5','90','0','0'});

l1 = str2double(datos{1});
l2 = str2double(datos{2});
l3 = str2double(datos{3});

theta1 = deg2rad(str2double(datos{4}));
theta2 = deg2rad(str2double(datos{5}));
theta3 = deg2rad(str2double(datos{6}));


opcion = menu('Selecciona el metodo', ...
              'Solucion geometrica', ...
              'Matrices de transformacion H');


figure;

for i = 1:3

    if i == 1
        t1 = 0;
        t2 = 0;
        t3 = 0;
        angulo = theta1;

    elseif i == 2
        t1 = theta1;
        t2 = 0;
        t3 = 0;
        angulo = theta2;

    else
        t1 = theta1;
        t2 = theta2;
        t3 = 0;
        angulo = theta3;
    end

    for movimiento = 0:0.05:angulo

        if i == 1
            t1 = movimiento;
        elseif i == 2
            t2 = movimiento;
        else
            t3 = movimiento;
        end


        [x1,y1,z1,x2,y2,z2,x3,y3,z3] = ...
            CalcularRobot(l1,l2,l3,t1,t2,t3,opcion);


        clf;
        hold on;

        line([0 x1],[0 y1],[0 z1], ...
            'LineWidth',3);

        line([x1 x2],[y1 y2],[z1 z2], ...
            'LineWidth',3);

        line([x2 x3],[y2 y3],[z2 z3], ...
            'LineWidth',3);

        scatter3([0 x1 x2 x3], ...
                 [0 y1 y2 y3], ...
                 [0 z1 z2 z3], ...
                 60,'filled');

        limite = l1 + l2 + l3 + 1;

        axis equal;
        axis([-limite limite -limite limite -limite limite]);

        grid on;

        xlabel('X');
        ylabel('Y');
        zlabel('Z');

        view(45,30);


        pause(0.03);

    end
end