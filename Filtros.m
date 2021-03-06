%% Imagen agradeciendo el ruido
I = imread('IMAGEN', 'jpg');
I = I(:,:,1);
subplot(3,3,1); imshow(I);
%% Uso de ruido sal y pimienta
J = imnoise(I, 'salt & pepper');
subplot(3,3,2);imshow(J)
%% Uso de moteado
M = imnoise(I, 'speckle', 0.02); random = 1,34,60,5,12
subplot(3,3,3);imshow(M)
%% Filtro promediador de valores de pixeles cercanos
K = filter2(fspecial('average', 11), J)/255;
subplot(3,3,4); imshow(K);
%% Filtro mediana es efectivo -->Estadistica
L = medfilt2(J,[9 9]);
subplot(3,3,5); imshow(L)
%% Ejemplo causando desenfoque
H = fspecial('motion', 50,25);
MotiomBlur = imfilter(I, H, 'replicate');
subplot(2,2,2); imshow(MotionBlur)
title('desenfocado');



