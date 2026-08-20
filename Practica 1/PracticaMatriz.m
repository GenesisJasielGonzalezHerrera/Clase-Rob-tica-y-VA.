clc
clear
close all

P1 = [0,0,0,1]';
P2 = [3,0,0,1]';
P3 = [3,3,0,1]';
P4 = [0,3,0,1]';

for i = 0:0.5:2
    clf

    P1t = MoverMatriz(0,i,0,P1);
    P2t = MoverMatriz(0,i,0,P2);
    P3t = MoverMatriz(0,i,0,P3);
    P4t = MoverMatriz(0,i,0,P4);

    x = [P1t(1) P2t(1) P3t(1) P4t(1) P1t(1)];
    y = [P1t(2) P2t(2) P3t(2) P4t(2) P1t(2)];

    plot(x,y,"LineWidth",2)

    axis equal
       xlim([-2 6])
       ylim([-2 9])
    pause(.1)

end