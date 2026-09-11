close all;
clear;
clc;

l1 = input('Introduce la longitud del eslabon 1 [m]: ');
l2 = input('Introduce la longitud del eslabon 2 [m]: ');
l3 = input('Introduce la longitud del eslabon 3 [m]: ');

theta1 = 90;
theta2 = 0;
theta3 = 0;

theta1 = deg2rad(theta1);
theta2 = deg2rad(theta2);
theta3 = deg2rad(theta3);

mov1 = input('Introduce el movimiento del eslabon 1 [grados]: ');
mov2 = input('Introduce el movimiento del eslabon 2 [grados]: ');
mov3 = input('Introduce el movimiento del eslabon 3 [grados]: ');

mov1 = deg2rad(mov1);
mov2 = deg2rad(mov2);
mov3 = deg2rad(mov3);

limite = l1 + l2 + l3 + 1;

for i = 0:0.05:mov1

    clf;

    t1 = theta1 + i;
    t2 = theta2;
    t3 = theta3;

    x1 = l1*cos(t1);
    y1 = l1*sin(t1);

    x2 = x1 + l2*cos(t1+t2);
    y2 = y1 + l2*sin(t1+t2);

    x3 = x2 + l3*cos(t1+t2+t3);
    y3 = y2 + l3*sin(t1+t2+t3);

    % Eje
    line([-limite limite],[0 0], ...
        "Color",'red','LineWidth',2);

    line([0 0],[-limite limite], ...
        "Color",'green','LineWidth',2);

    hold on;

    % Eslabon
    line([0 x1],[0 y1], ...
        "Color",'blue','LineWidth',4);

    line([x1 x2],[y1 y2], ...
        "Color",'blue','LineWidth',4);

    line([x2 x3],[y2 y3], ...
        "Color",'blue','LineWidth',4);

    % Articulacion
    scatter([0 x1 x2 x3], ...
            [0 y1 y2 y3], ...
            100,'filled');

    axis equal;
    grid on;
    axis([-limite limite -limite limite]);
    pause(0.05);
end

theta1 = theta1 + mov1;

for i = 0:0.05:mov2

    clf;

    t1 = theta1;
    t2 = theta2 + i;
    t3 = theta3;

    x1 = l1*cos(t1);
    y1 = l1*sin(t1);

    x2 = x1 + l2*cos(t1+t2);
    y2 = y1 + l2*sin(t1+t2);

    x3 = x2 + l3*cos(t1+t2+t3);
    y3 = y2 + l3*sin(t1+t2+t3);

    % Eje
    line([-limite limite],[0 0], ...
        "Color",'red','LineWidth',2);

    line([0 0],[-limite limite], ...
        "Color",'green','LineWidth',2);

    hold on;

    % Eslabon
    line([0 x1],[0 y1], ...
        "Color",'blue','LineWidth',4);

    line([x1 x2],[y1 y2], ...
        "Color",'blue','LineWidth',4);

    line([x2 x3],[y2 y3], ...
        "Color",'blue','LineWidth',4);

    % Articulacion
    scatter([0 x1 x2 x3], ...
            [0 y1 y2 y3], ...
            100,'filled');

    axis equal;
    grid on;
    axis([-limite limite -limite limite]);
    pause(0.05);
end

theta2 = theta2 + mov2;

for i = 0:0.05:mov3

    clf;

    t1 = theta1;
    t2 = theta2;
    t3 = theta3 + i;

    x1 = l1*cos(t1);
    y1 = l1*sin(t1);

    x2 = x1 + l2*cos(t1+t2);
    y2 = y1 + l2*sin(t1+t2);

    x3 = x2 + l3*cos(t1+t2+t3);
    y3 = y2 + l3*sin(t1+t2+t3);

    % Eje
    line([-limite limite],[0 0], ...
        "Color",'red','LineWidth',2);

    line([0 0],[-limite limite], ...
        "Color",'green','LineWidth',2);

    hold on;

    % Eslabon
    line([0 x1],[0 y1], ...
        "Color",'blue','LineWidth',4);

    line([x1 x2],[y1 y2], ...
        "Color",'blue','LineWidth',4);

    line([x2 x3],[y2 y3], ...
        "Color",'blue','LineWidth',4);

    % Articulacion
    scatter([0 x1 x2 x3], ...
            [0 y1 y2 y3], ...
            100,'filled');

    axis equal;
    grid on;
    axis([-limite limite -limite limite]);
    pause(0.05);
end

theta3 = theta3 + mov3;

clf;

x1 = l1*cos(theta1);
y1 = l1*sin(theta1);

x2 = x1 + l2*cos(theta1+theta2);
y2 = y1 + l2*sin(theta1+theta2);

x3 = x2 + l3*cos(theta1+theta2+theta3);
y3 = y2 + l3*sin(theta1+theta2+theta3);

% Eje
line([-limite limite],[0 0], ...
    "Color",'red','LineWidth',2);

line([0 0],[-limite limite], ...
    "Color",'green','LineWidth',2);

hold on;

% Eslabon
line([0 x1],[0 y1], ...
    "Color",'blue','LineWidth',4);

line([x1 x2],[y1 y2], ...
    "Color",'blue','LineWidth',4);

line([x2 x3],[y2 y3], ...
    "Color",'blue','LineWidth',4);

% Articulacion
scatter([0 x1 x2 x3], ...
        [0 y1 y2 y3], ...
        100,'filled');

axis equal;
grid on;
axis([-limite limite -limite limite]);