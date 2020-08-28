%%Imagenes
%seleccionar trabajr y leer imagen

imag=imread('m.jpeg', 'jpeg');
imagesc(imag)
%rows 229
%cols 220
% 3 ??? numero de layrs o capas de la imagen (RGB)
%uint8 = unsigned integer de 8 bits 

R= imag(:,:,1);
G= imag(:,:,2);
B= imag(:,:,3);

%% Desplegar capas o layers 
subplot(2, 2, 1); imagesc(imag); axis off
subplot(2, 2, 2); imagesc(R); axis off
subplot(2, 2, 3); imagesc(G); axis off
subplot(2, 2, 4); imagesc(B); axis off

%% Desplegar el color rojo 
R=imag(:,:,1);
imag(:,:,2)=0;
imag(:,:,3)=0;
figure(2);
imshow(imag)
axis off
%% Solo el verde
imag(:,:,1)=0;
G=imag(:,:,2);
imag(:,:,3)=0;
figure(3)
image(imag)
axis off
%image
%imagesc
%imshow
%Para guardar una imagen es 
%% Blanco y negro
Im2 = imag;
BW = im2bw(Im2);
figure(5)
imshow(BW)

%% Datos
Datos = imag;
D= Datos(:,:,1);
D1 = Datos(66:88,1)
imagesc(D1/100)
%colormap gray
%% 
Datos = imag;
for k=0.1:0.1:1
    image(k.*Datos)
    pause(0.1)
end

%% Redimensionamiento de imagen 

imrd = imresize(imag, 0.4)
image(imrd)
imwrite(imrd,'Negativo.jpg','jpg')
%% 
AAA= imread('Negativo.jpg');
%% Convertir colores
% Negativo de una imagen 
Neg=imcomplement(imag)
image(Neg)
%El rojo 
R(:,:,2)=0;
R(:,:,3)=0;
imshow(R)
axis off
%el verde 
G = imag
G(:,:,1)=0;
G(:,:,3)=0;
imshow(G)
axis off
%AZUL 
B = imag 
B(:,:,2)=0;
B(:,:,1)=0;
imshow(B)
axis off
% Amarillo 
A = R+G
imshow(A)

%OTROS COLORES
%Naranja 
N = R + 1/2.*G;
Magenta = R + B;

% Mitad azul y mitad rojo para obtener morado
M = 1/2.*R + 1/2.*B
imshow(M)

%% Difraccion de la luz o canales de colores 
subplot(3, 3, 1); imagesc(imag); axis off; title('Original')
subplot(3, 3, 2); imagesc(R); axis off; title('Rojo')
subplot(3, 3, 3); imagesc(G); axis off; title('Verde')
subplot(3, 3, 4); imagesc(B); axis off; title('Azul')
subplot(3, 3, 5); imagesc(N); axis off; title('Naranja')
subplot(3, 3, 6); imagesc(Magenta); axis off; title('Magenta')
subplot(3, 3, 7); imagesc(A); axis off; title('Amarillo')
subplot(3, 3, 8); imagesc(M); axis off; title('Morado')
subplot(3,3,9); imagesc(Neg); axis off; title('Negativo')
