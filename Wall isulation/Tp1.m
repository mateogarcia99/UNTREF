function varargout = Tp1(varargin)
% GIU MATLAB code for giu.fig
%      GIU, by itself, creates a new GIU or raises the existing
%      singleton*.
%
%      H = GIU returns the handle to a new GIU or the handle to
%      the existing singleton*.
%
%      GIU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GIU.M with the given input arguments.
%
%      GIU('Property','Value',...) creates a new GIU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before giu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to giu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help giu

% Last Modified by GUIDE v2.5 15-Nov-2021 11:58:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @giu_OpeningFcn, ...
                   'gui_OutputFcn',  @giu_OutputFcn, ...
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
% --- Executes just before giu is made visible.


function giu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to giu (see VARARGIN)

% Choose default command line output for giu
handles.output = hObject;

% Update handles structure2
guidata(hObject, handles);

% UIWAIT makes giu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = giu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserºved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[num,txt,raw]=xlsread("tabla_materiales");
densidad_data= num(:,3);
young_data = num(:,4);
perdidas_data =num(:,5);
poisson_data = num(:,6);

ancho= get(handles.edit3,'string');
alto= get(handles.edit2,'string');
largo= get(handles.edit1,'string');

if ancho<= "0" 
    errordlg("Ancho debe ser mayor que 0","Error");
end
if alto<= "0" 
    errordlg("Alto debe ser mayor que 0","Error");   
end
if largo<= "0" 
    errordlg("Largo debe ser mayor que 0","Error");   
end

contents = cellstr(get(handles.popupmenu2,'String'));
octava=contents{get(handles.popupmenu2,'Value')};

mat = get(handles.popupmenu9,'Value');
densidad = densidad_data(mat);
young = young_data(mat);
perdidas = perdidas_data(mat);
poisson = poisson_data(mat);

davy= get(handles.checkbox1,'Value');
ISO= get(handles.checkbox3,'Value');
sharp=get(handles.checkbox2,'Value');
pared_simple=get(handles.checkbox4,'Value');

f = [20,25,31.5,40,50,63,80,100,125,160,200,250,315,400,500,630,800,1000,1250,1600,2000,2500,3150,4000,5000,6300,8000,10000,12500,16000,20000];

e=str2double(ancho);
l=str2double(largo);
h=str2double(alto);
axes=(handles.axes1);

hold on
if  pared_simple == 1
   [R_ley_de_masa]= calculo_ley_de_masa(densidad,e,young,perdidas,poisson);
   p1=semilogx(f,R_ley_de_masa,'-gs',...
    'LineWidth',2,...
    'MarkerSize',5,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5],'DisplayName','Pared simple');
end
if  sharp == 1
   [R_sharp]= calculo_sharp(densidad,e,young,perdidas,poisson);
   p2=semilogx(f,R_sharp,'-rs',...
    'LineWidth',2,...
    'MarkerSize',5,...
    'MarkerEdgeColor','y',...
    'MarkerFaceColor',[0.5,0.5,0.5],'DisplayName','Sharp');
end
if  ISO == 1
   [R_ISO]= calculo_ISO(e,young,poisson,densidad,perdidas,l,h);
   p3=semilogx(f,R_ISO,'-cs',...
    'LineWidth',2,...
    'MarkerSize',5,...
    'MarkerEdgeColor','m',...
    'MarkerFaceColor',[0.5,0.5,0.5],'DisplayName','ISO');
end
if  davy == 1
   [R_davy]= calculo_davy(densidad,e,perdidas,young,poisson,l,h);
   p4=semilogx(f,R_davy,'-ys',...
    'LineWidth',2,...
    'MarkerSize',5,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[0.5,0.5,0.5],'DisplayName','Davy');
end
title("Grafico")
xlabel("Frecuencia [Hz]")
ylabel("R[dB]"),grid on 
legend()



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB

[num,txt,raw]=xlsread("tabla_materiales");
densidad_data= num(:,3);
young_data = num(:,4);
perdidas_data =num(:,5);
poisson_data = num(:,6);

ancho= get(handles.edit3,'string');
alto= get(handles.edit2,'string');
largo= get(handles.edit1,'string');
e=str2double(ancho);
l=str2double(largo);
h=str2double(alto);

xlswrite("Resultados.xlsx",e,'Resultados','D3:D3');
xlswrite("Resultados.xlsx",l,'Resultados','B3:B3');
xlswrite("Resultados.xlsx",h,'Resultados','C3:C3');

material=cellstr(get(handles.popupmenu9,'String'));


mat = get(handles.popupmenu9,'Value');
densidad = densidad_data(mat);
young = young_data(mat);
perdidas = perdidas_data(mat);
poisson = poisson_data(mat);

matexp=material(mat,1);
xlswrite("Resultados.xlsx",matexp,'Resultados','A3:A3');



c_0=343;
m = e*densidad ;
B = (young/(1-poisson^2))*((e^3)/12);
f_c = (((c_0)^2)/(2*pi))*sqrt(m/B) ;
xlswrite("Resultados.xlsx",f_c,'Resultados','E3:E3');

f = [20,25,31.5,40,50,63,80,100,125,160,200,250,315,400,500,630,800,1000,1250,1600,2000,2500,3150,4000,5000,6300,8000,10000,12500,16000,20000];
xlswrite("Resultados.xlsx",f,'Resultados','B7:AF7');

[R_davy]= calculo_davy(densidad,e,perdidas,young,poisson,l,h);  
xlswrite("Resultados.xlsx",R_davy,'Resultados','B10:AF10');


[R_ISO]= calculo_ISO(e,young,poisson,densidad,perdidas,l,h);
xlswrite("Resultados.xlsx",R_ISO,'Resultados','B11:AF11');


[R_sharp]= calculo_sharp(densidad,e,young,perdidas,poisson);
xlswrite("Resultados.xlsx",R_sharp,'Resultados','B9:AF9');


[R_ley_de_masa]= calculo_ley_de_masa(densidad,e,young,perdidas,poisson);
xlswrite("Resultados.xlsx",R_ley_de_masa,'Resultados','B8:AF8');


winopen('Resultados.xlsx')






% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold off
axes=(handles.axes1);
semilogx(0,0)
title("Grafico")
xlabel("Frecuencia [Hz]")
ylabel("R [dB]"),grid on 


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when uipanel1 is resized.
function uipanel1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
