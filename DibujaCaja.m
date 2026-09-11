function DibujaCaja(PointMatrix,color)

P1 = PointMatrix(:,1);
P2 = PointMatrix(:,2);
P3 = PointMatrix(:,3);
P4 = PointMatrix(:,4);
P5 = PointMatrix(:,5);
P6 = PointMatrix(:,6);
P7 = PointMatrix(:,7);
P8 = PointMatrix(:,8);

LineasPuntos(P1,P2,color);
LineasPuntos(P1,P3,color);
LineasPuntos(P2,P4,color);
LineasPuntos(P3,P4,color);

LineasPuntos(P5,P6,color);
LineasPuntos(P5,P7,color);
LineasPuntos(P6,P8,color);
LineasPuntos(P7,P8,color);

LineasPuntos(P1,P5,color);
LineasPuntos(P2,P6,color);
LineasPuntos(P3,P7,color);
LineasPuntos(P4,P8,color);

end