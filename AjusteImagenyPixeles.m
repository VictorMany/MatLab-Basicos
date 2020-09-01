%% Ajuste Imagen
foto=imread('craneo.jpg');  % Tiff, png, jpeg,bmp!!

immod= imadjust(foto, [0 1],[1 0]);
subplot(1,2,1);imshow(foto)
subplot(1,2,2);imshow(immod)

%% Histograma de la imagen
foto=imread('craneo.jpg'); 
foto= im2uint8(foto(:,:,1));
H=imhist(foto)
axis([0 255 0 15000])
set(gca, 'xtick', 0:50:255)
set(gca,'ytick', 0 :2000:15000)
subplot(221)
imhist(H)
h1 = H(1:10:256);
horz = 1:10:256;
subplot(222)
bar(horz, h1)
axis([0 255 0 15000])
set(gca, 'xtick', 0:50:255)
set(gca, 'ytick', 0:2000:15000)
subplot(223)
stem(horz, h1, 'fill')
axis([0 255 0 15000])
set(gca, 'xtick',[0:50:255])
set(gca, 'ytick',[0:2000:15000])
subplot(224)
g=histeq(foto(:,:,1), 128);
% imhist(g)
imshow(g/0.8)

%%

X=foto(:,:,1);
subplot (1,2,1);imagesc(X);
subplot(1,2,2);plot(X)
%shading interp 
colormap gray

%%
% Imagen de 32x32
a=size(foto);
AAA=zeros(981,736);

for r=1:981
    for c=1:736
        
        AAA(1:16:r,1:16:c)=1;
        
    end
end

imshow(AAA)
colormap winter

%% Opcion alternativa de Ajuste 
imag=imread('craneo.jpg', 'jpg');

x=rgb2gray(imag);
imshow(imag)
%% CAMBIAR LA SATURaCION DE LOS COLORES
xad2=imadjust(x,[0.5 0.75],[0.5 1],7);
imshow(xad2);
%% Recorte de imagen 
i = imread('craneo.jpg', 'jpg');
i2 = imcrop(i, [200 200 200 200]);
subplot(1,2,1); imshow(i);
subplot(1,2,2); imshow(i2);

%% Desopacar 
l = imread('craneo.jpg', 'jpg');
background = imopen(i, strel('disk',15));
lp = imsubstract(l, background);
subplot(1,2,1); imshow(i);
subplot(1,2,2); imshow(i2);

 