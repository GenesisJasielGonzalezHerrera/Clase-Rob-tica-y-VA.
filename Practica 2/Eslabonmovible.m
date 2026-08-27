clc
clear
close all

l1 = input("Introduce la longitud del eslabon 1 [m]: ");
theta1 = input("Introduce el angulo inicial de la base [grados]: ");

l2 = input("Introduce la longitud del eslabon 2 [m]: ");
theta2 = input("Introduce el angulo inicial del codo [grados]: ");

theta1_final = input("Introduce el angulo final de la base [grados]: ");
theta2_final = input("Introduce el angulo final del codo [grados]: ");

% MOVIMIENTO DEL PUNTO 1 (BASE)
for angulo1 = theta1:5:theta1_final

    clf
    hold on

    t1 = angulo1*pi/180;
    t2 = theta2*pi/180;

    x1 = l1*cos(t1);
    y1 = l1*sin(t1);

    x2 = x1 + l2*cos(t1+t2);
    y2 = y1 + l2*sin(t1+t2);

    line([0 x1],[0 y1],[0 0], ...
        "Color","black","LineWidth",3);

    line([x1 x2],[y1 y2],[0 0], ...
        "Color","black","LineWidth",3);

    scatter(0,0,100,"filled");
    scatter(x1,y1,100,"filled");
    scatter(x2,y2,100,"filled");

    axis equal
    xlim([-7 7])
    ylim([-7 7])
    grid on

    title("Movimiento del eslabon de la base")

    pause(0.1)
end


% MOVIMIENTO DEL CODO
for angulo2 = theta2:5:theta2_final

    clf
    hold on

    % Convertir grados a radianes
    t1 = theta1_final*pi/180;
    t2 = angulo2*pi/180;

    x1 = l1*cos(t1);
    y1 = l1*sin(t1);

    x2 = x1 + l2*cos(t1+t2);
    y2 = y1 + l2*sin(t1+t2);

    line([0 x1],[0 y1],[0 0], ...
        "Color","black","LineWidth",3);

    line([x1 x2],[y1 y2],[0 0], ...
        "Color","black","LineWidth",3);

    scatter(0,0,100,"filled");
    scatter(x1,y1,100,"filled");
    scatter(x2,y2,100,"filled");

    axis equal
    xlim([-7 7])
    ylim([-7 7])
    grid on

    pause(0.1)
end