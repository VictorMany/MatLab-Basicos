function varargout = AppCamera(varargin)
% APPCAMERA MATLAB code for AppCamera.fig
%      APPCAMERA, by itself, creates a new APPCAMERA or raises the existing
%      singleton*.
%
%      H = APPCAMERA returns the handle to a new APPCAMERA or the handle to
%      the existing singleton*.
%
%      APPCAMERA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APPCAMERA.M with the given input arguments.
%
%      APPCAMERA('Property','Value',...) creates a new APPCAMERA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AppCamera_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AppCamera_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AppCamera

% Last Modified by GUIDE v2.5 20-Aug-2020 11:38:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AppCamera_OpeningFcn, ...
                   'gui_OutputFcn',  @AppCamera_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before AppCamera is made visible.
function AppCamera_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AppCamera (see VARARGIN)

% Choose default command line output for AppCamera
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AppCamera wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AppCamera_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in encenderCam.
function encenderCam_Callback(hObject, eventdata, handles)
% hObject    handle to encenderCam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vid;
set(handles.axes1,'visible','on');  %
axes(handles.axes1);
vid=videoinput('winvideo',1);        %Tenemos el video entrante
vidRes = get(vid, 'VideoResolution'); %Toma la resolucin de la camara  
nBands = get(vid, 'NumberOfBands');   
hImage = image( zeros(vidRes(2), vidRes(1), nBands)); %El tamaño de la imagen va a ser la resolucion de mi camara 
preview(vid, hImage);


% --- Executes on button press in tomarFoto.
function tomarFoto_Callback(hObject, eventdata, handles)
% hObject    handle to tomarFoto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vid;
foto = getsnapshot(vid);  %toma la foto
image(foto)               %guarda la foto

% --- Executes on button press in cerrarCam.
function cerrarCam_Callback(hObject, eventdata, handles)
% hObject    handle to cerrarCam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.axes1,'visible','off');
closepreview;
axes(handles.axes1);

close (gcf)   %cerramos la ventana 

% --- Executes on button press in togglebutton1.


% --- Executes on button press in secuenciaFoto.
function secuenciaFoto_Callback(hObject, eventdata, handles)
% hObject    handle to secuenciaFoto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vid;
set(handles.axes1,'visible','off');
closepreview;
axes(handles.axes1);
set(handles.axes1, 'Color','blue'); 
set(handles.axes2,'visible','on');  %
axes(handles.axes2);

vid=videoinput('winvideo',1);        %Tenemos el video entrante
vidRes = get(vid, 'VideoResolution'); %Toma la resolucin de la camara  
nBands = get(vid, 'NumberOfBands');   
hImage = image( zeros(vidRes(2), vidRes(1), nBands)); %El tamaño de la imagen va a ser la resolucion de mi camara 

preview(vid, hImage);

for d=1:5
    foto = getsnapshot(vid);  %toma la foto
    image(foto)               %guarda la foto
    pause(1)
end
