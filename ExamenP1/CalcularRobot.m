function [x1,y1,z1,x2,y2,z2,x3,y3,z3] = ...
    CalcularRobot(l1,l2,l3,t1,t2,t3,opcion)

if opcion == 1

    %% SOLUCION GEOMETRICA

    x1 = l1*cos(t1);
    y1 = l1*sin(t1);
    z1 = 0;

    x2 = x1 + l2*cos(t1+t2);
    y2 = y1 + l2*sin(t1+t2);
    z2 = 0;

    x3 = x2 + l3*cos(t1+t2+t3);
    y3 = y2 + l3*sin(t1+t2+t3);
    z3 = 0;

else

    %%  TRANSFORMACION H

    H1 = [cos(t1) -sin(t1) 0 l1*cos(t1);
          sin(t1)  cos(t1) 0 l1*sin(t1);
          0        0       1 0;
          0        0       0 1];

    H2 = [cos(t2) -sin(t2) 0 l2*cos(t2);
          sin(t2)  cos(t2) 0 l2*sin(t2);
          0        0       1 0;
          0        0       0 1];

    H3 = [cos(t3) -sin(t3) 0 l3*cos(t3);
          sin(t3)  cos(t3) 0 l3*sin(t3);
          0        0       1 0;
          0        0       0 1];

    P1 = H1*[0;0;0;1];

    P2 = H1*H2*[0;0;0;1];

    P3 = H1*H2*H3*[0;0;0;1];

    x1 = P1(1);
    y1 = P1(2);
    z1 = P1(3);

    x2 = P2(1);
    y2 = P2(2);
    z2 = P2(3);

    x3 = P3(1);
    y3 = P3(2);
    z3 = P3(3);

end

end