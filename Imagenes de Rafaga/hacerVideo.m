%% VIDEO DE IMAGENES
%VARIABLES DE INICIO Y FIN
%LEER LAS IMAGENES 
%VISUALIZAR IMAGENES 
%Buffer o arreglo de matrices (Para animacion)
 ini = 1; maxim = 281;
 for i = ini : maxim
     formatSpec = '%s%d%s';

     archivo1 = sprintf(formatSpec,'(',i,')');
    
     imag1 = imread(archivo1, 'jpg');
     J = imrotate(imag1,-90,'bilinear');
     imagesc(J);
     axis off;
     Fase(i) = getframe;
     drawnow;
     pause(0.001)
 end
 movie(Fase);
 
 %% Grabar video
Video = VideoWriter('Test2');
Video.FrameRate = 3;
open(Video);
writeVideo(Video, Fase);
close(Video);