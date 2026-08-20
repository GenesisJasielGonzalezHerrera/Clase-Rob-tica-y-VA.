function P2 = MoverMatriz(dx,dy,dz,P)

T = [1 0 0 dx;
     0 1 0 dy;
     0 0 1 dz;
     0 0 0 1];

P2 = T*P;

end