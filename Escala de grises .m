%%Ajuste de la foto
foto = imread('bocho.jpg');
for k=0:0.1:1
immod=imadjust(foto, [0.5 1],[0 k]);
pause(0.1)
figure(1)
subplot(1,2,1);imshow(foto)
subplot(1,2,2);imshow(immod)
end

%% Histograma de la imagen
foto = imread('bocho.jpg');
foto=im2uint8(foto(:,:,1));
H=imhist(foto)
axis([0 255 0 15000])
set(gca,'xtick', 0:50:255)
set(gca,'ytick', 0:2000:15000)

%% IMagen de escala de grises 
%a = size(foto)
AAA=zeros(32,32);
aux=1;
for r=1:32
    for c=1:32
        AAA(r,c)=aux;
    end
    aux=aux-.0312   ;
end

imshow(AAA)
%colormap winter
%colormap(winter)
        




