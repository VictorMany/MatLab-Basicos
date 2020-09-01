%% Imagen agradeciendo el ruido
I = imread('IMAGEN', 'jpg');
I = I(:,:,1);
subplot(2,2,1); imshow(I);
%% Uso de ruido sal y pimienta
J = imnoise(I, 'salt & pepper');
subplot(2,2,2);imshow(J)
 
%% Filtro promediador de valores de pixeles cercanos
K = filter2(fspecial('average', 11), J)/255;
subplot(2,2,3); imshow(K);
%% Filtro mediana es efectivo -->Estadistica
L = medfilt2(J,[9 9]);
subplot(2,2,4); imshow(L)
