function varargout = groupprelim(varargin)
% GROUPPRELIM MATLAB code for groupprelim.fig
%      GROUPPRELIM, by itself, creates a new GROUPPRELIM or raises the existing
%      singleton*.
%
%      H = GROUPPRELIM returns the handle to a new GROUPPRELIM or the handle to
%      the existing singleton*.
%
%      GROUPPRELIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GROUPPRELIM.M with the given input arguments.
%
%      GROUPPRELIM('Property','Value',...) creates a new GROUPPRELIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before groupprelim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to groupprelim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help groupprelim

% Last Modified by GUIDE v2.5 13-Apr-2016 12:48:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @groupprelim_OpeningFcn, ...
                   'gui_OutputFcn',  @groupprelim_OutputFcn, ...
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


% --- Executes just before groupprelim is made visible.
function groupprelim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to groupprelim (see VARARGIN)

% Choose default command line output for groupprelim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes groupprelim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = groupprelim_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
list_menu=get(handles.listbox1,'Value');
switch list_menu
    
    case 1
        axes(handles.axes1);
        cla;
        x = -10:.01:10;
        y_og = cos(x);
        y_de = -sin(x);
        y_it = sin(x);
        plot(x,y_og,'k',x,y_de,'r');
       
        
        axes(handles.axes2);
        cla;  
        plot(x,y_og,'k',x,y_it,'b');
        
        %y_p=0; fill(y_it,y_p,'b');
        
    case 2
        axes(handles.axes1);
        cla;
        x_org= -10:.01:10;
        x = -10:.01:10;
        y2 = sym('ln(x)');
        y2der = diff(y2,'x');
        y2int = int(y2,'x');
        y2_value = subs(y2,'x',x);
        x(find(x==0)) = [];
        y2der_value = subs(y2der,'x',x);
        y2int_value = subs(y2int,'x',x);
        plot(x_org,y2_value,'k',x,y2der_value,'r');
        
        axes(handles.axes2);
        cla;
        plot(x_org,y2_value,'k',x,y2int_value,'b');
        %y_p=0;fill(y2int_value,y_p,'b');
    case 3
        axes(handles.axes1);
        cla;
        x = -10:.01:10;
        y3 = sym('tanh (x)');
        y3der = diff(y3,'x');
        y3int = int(y3,'x');
        y3_value = double(subs(y3,'x',x));
        y3der_value = double(subs(y3der,'x',x));
        y3int_value = double(subs(y3int,'x',x));
        plot(x,y3_value,'k',x,y3der_value ,'r');
        
        
        axes(handles.axes2);
        cla;
        plot(x,y3_value,'k',x, y3int_value,'b');
        %y_p=0;fill(y3int_value,y_p,'b');
        
    case 4
       N = str2double(get(handles.edit5,'String')) ;
       axes(handles.axes1);
        cla;
        x = -10:.01:10;
        y4 = sym('x^N');
        y4=subs(y4,'N',N)
        y4der = diff(y4,'x');
        y4int = int(y4,'x');
        y4_value = double(subs(y4,'x',x));
        y4der_value = double(subs(y4der,'x',x));
        y4int_value = double(subs(y4int,'x',x));
        plot(x,y4_value,'k',x,y43der_value ,'r');
        
        
        axes(handles.axes2);
        cla;
        plot(x,y4_value,'k',x, y4int_value,'b');
        %y_p=0;fill(y4int_value,y_p,'b');
    case 5
        
         axes(handles.axes1);
        cla;
        x = -10:.01:10;
        y5 = sym(get(handles.edit11,'String'));
        y5der = diff(y5,'x');
        y5int = int(y5,'x');
        y5_value = double(subs(y5,'x',x));
        y5der_value = double(subs(y5der,'x',x));
        y5int_value = double(subs(y5int,'x',x));
        plot(x,y5_value,'k',x,y5der_value ,'r');
        
        
        axes(handles.axes2);
        cla;
        plot(x,y5_value,'k',x, y5int_value,'b');
        %y_p=0;fill(y5int_value,y_p,'b');
end

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


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1



% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
N = str2double(get(handles.edit5,'String'));   % Get the frequency from box tagged edit5
if isnan(N)                               % If N isn't a number over-write it with [ ]
    
    set(handles.edit5, 'String','   ');        
    errordlg('Input must be a number');     
    pause(1);
end
% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double
            y5 = sym(get(handles.edit11,'String'));

% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TeamProject2;
close groupprelim;