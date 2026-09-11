clear all
close all
clc

% Dibujar los ejes
DibujaEjes(10);

% Pedir las dimensiones del cubo
[Ancho,Largo,Alto] = LeerDimensiones();

% Crear los puntos del cubo
PointMatrix = GetPointMatrix(Largo,Ancho,Alto,0,0,0);

% Dibujar el cubo original
DibujaCaja(PointMatrix,'black');

% Preguntar qué tipo de movimiento quiere realizar el usuario
fprintf('\n¿Cómo quieres mover el cubo?\n');
fprintf('1. Traslación\n');
fprintf('2. Rotación\n');

opcion = input('Selecciona una opción: ');

switch opcion

    case 1
        % ---------------- TRASLACIÓN ----------------
        fprintf('\n--- TRASLACIÓN ---\n');

        dx = input('Introduce el desplazamiento en X [m]: ');
        dy = input('Introduce el desplazamiento en Y [m]: ');
        dz = input('Introduce el desplazamiento en Z [m]: ');

        newPoints = TrasladarCaja(dx,dy,dz,PointMatrix);

        % Dibujar el cubo transformado
        DibujaCaja(newPoints,'magenta');

    case 2
        % ---------------- ROTACIÓN ----------------
        fprintf('\n--- ROTACIÓN ---\n');

        theta = input('Indica el ángulo de rotación [rad]: ');

        newPoints = MoverCaja(theta,PointMatrix);

        % Dibujar el cubo transformado
        DibujaCaja(newPoints,'cyan');

    otherwise
        fprintf('\nOpción no válida.\n');

end