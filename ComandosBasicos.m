%Comandos basicos de matlab 
A=1;
B = 2;
C= A + B
%% Celdas de trabajo 
%Me ayudan a correr solo seccions del codigo
Raiz = sqrt(B)
Y = A ^ 2
%% Celda #2
Z = Y-C^3
%% Abrir camera 

NE = (A+B-Raiz*Z)/Y
%% VECORES (MATRICE)
% filas por columnas o rows x cols
AA = [1 2 3];
BB = [0 1 2];

CC = [1 2 3 0 0; 4 5 6 0 0; 7 0 8 9 0; 1 2 3 0 0; 1 2 3 0 0]
imagesc(CC)
surf(CC)
colormap winter
%% Que es lo que podemos programar en matlab ?

%operadores Relacionales 
% < Manor que 
% >=Mayor o igual que 
% <= Menor o igual que 
% == Igual que 
% ~= Diferente o distinto
%Operadores Logicos
% And & &&
% Or | ||
% Not ~ 
%% Ejemplo
%LOs dos puntos indican que hay un incremento de 1 hasta el otro numero 
%Y se puede poner un incremento especifico
%A=1:0.5:9
A=1:9;
B=9-A;
%Lo s resultados nos los da en tipo logico (0 y 1)
resp=A>4   %Nos regresa los que son mayores a 4
resp1=A==4 %NOS regresa el que es igual a 4
resp2=A~=B %los que no son igual a B
%% Ciclo for 
clear all
clc

con=0;
for d=1:7
    for h=1:24
        for m=1:60
            for s=1:60
                con = con+1;
            end
        end
    end
end
comparador(m,s)
disp(num2str(con))
%% IF
clear all 
clc
a = input('Primer valor');
b = input('Segundo valor');
if a>b
    disp('a es mayor')
elseif b>a
    disp('b es mayor')
else
    disp('son iguales')
end

%% While que no es do while 

clear all
clc
a = 4
while a < 20 
    disp(a)
    a=a+1;
end

%% Switch

clear all
clc

a = input('Ingresa el primer valor: ')
switch a
    case 1
        disp('UNO')
    case 2
        disp('No se')
    otherwise
        disp('Opcion no valida')
end
%% Operaciones aritmeticas son iguales 
% a+b
% a-c
% a.*b
% a./b
% a.^b
%El puntito hace la operacion elemento por elmento
A=1:9;
B=9:-1:1;
Kernel = 2;
ImagenOriginal=2;
R=A.*B
IMAGEN1=Kernel.*ImagenOriginal;
RR=A./B
%% INTERFACES GRAFICAS DE USUARIOS (GUI)
% comando usar guide en el command window 
% ****handles
% ****assignin
% ****evalin




