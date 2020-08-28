%% VIDEO DE IMAGENES
%VARIABLES DE INICIO Y FIN
%LEER LAS IMAGENES 
%VISUALIZAR IMAGENES 
%Buffer o arreglo de matrices (Para animacion)
 ini = 1; maxim = 20;
 for i = ini : maxim
     archivo1 = sprintf('%d',i);
     imag1 = imread(archivo1, 'jpeg');
     imagesc(imag1);
     axis off;
     Fase(i) = getframe;
     
     drawnow;
 end
 movie(Fase);
 
 %% Grabar video
Video= VideoWriter('Prueba1');
Video.FrameRate=3;
open(Video)
writeVideo(Video.Fase);
close(Video);