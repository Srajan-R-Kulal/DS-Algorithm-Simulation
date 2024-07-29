function varargout = linearsearch(varargin)
% LINEARSEARCH MATLAB code for linearsearch.fig
%      LINEARSEARCH, by itself, creates a new LINEARSEARCH or raises the existing
%      singleton*.
%
%      H = LINEARSEARCH returns the handle to a new LINEARSEARCH or the handle to
%      the existing singleton*.
%
%      LINEARSEARCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LINEARSEARCH.M with the given input arguments.
%
%      LINEARSEARCH('Property','Value',...) creates a new LINEARSEARCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before linearsearch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to linearsearch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help linearsearch

% Last Modified by GUIDE v2.5 16-Aug-2013 21:16:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @linearsearch_OpeningFcn, ...
                   'gui_OutputFcn',  @linearsearch_OutputFcn, ...
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


% --- Executes just before linearsearch is made visible.
function linearsearch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to linearsearch (see VARARGIN)

% Choose default command line output for linearsearch
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes linearsearch wait for user response (see UIRESUME)
% uiwait(handles.figure1);
clc;

global i;
i=0;
global a;
for j=1:10
    a(j)=0;
end

% --- Outputs from this function are returned to the command line.
function varargout = linearsearch_OutputFcn(hObject, eventdata, handles) 
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
% f = figure;
nEdit = str2num(get(handles.edit1,'String'));


for i = 1:nEdit
   textEl(i) = uicontrol('Style', 'edit', 'Position', [(i)*100 400, 100,50])
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
% global textE1;
global GUI;
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)|| g<=0
uicontrol(handles.edit1);
set(handles.edit1,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
else
    
%      GUI.h1(1) = uicontrol('Style', 'edit','Position', [100 500, 100,50]);
%                     set(GUI.h1(1),'String','10');
                   
    nEdit = str2num(get(handles.edit1,'String'));

for i = 1:nEdit
  GUI.h1(i) = uicontrol('Style', 'edit','Position', [i*100 500, 100,50],'FontSize',15,'ForegroundColor','b');
                  
end
end

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

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global a;
global GUI;
% global textE1;
n=str2double(get(handles.edit1,'String'));
% x1=get(handles.edit2,'String');
f=str2double(get(handles.edit2,'String'));
if isempty(f) || isnan(f)|| ~isreal(f)
    uicontrol(handles.edit2);
    set(handles.edit2,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
    textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
else
i=i+1;
if(i<=n)
   
   a(i)=f;
     set(GUI.h1(i),'String',num2str(f));
    
    set(handles.edit2,'String','');
    uicontrol(handles.edit2);
end
end
if i>=n

 set(handles.edit2,'Enable','Off');
 
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = uicontrol('Style','text','max',2, 'Units', 'norm', 'Position',[0 0 1 1]);
S = {'My value is:'};
for K = 1  : 10
  S{2} = sprintf('%d', K);
  set(A, 'String', S);
  pause(1/2);
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)|| g<=0
uicontrol(handles.edit3);
set(handles.edit3,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
end
% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GUI;
global a;
key=str2num(get(handles.edit3,'String'));
n=str2double(get(handles.edit1,'String'));
flag=0;
% GUI.h2= uicontrol('Style', 'edit','Position', [100 600, 100,50]);
% set(GUI.h2,'String',num2str(key));
s='';
s1='';
for i=1:n
    s=strcat(s,sprintf('                    COMPARE:   %d      and     %d       \n',key,a(i)));
    set(handles.edit4,'String',s);
    GUI.h2= uicontrol('Style', 'edit','backgroundcolor','g','Position', [i*100 550, 100,50],'FontSize',15,'ForegroundColor','b');
    set(GUI.h2,'String',num2str(key));
     set(GUI.h1(i),'backgroundcolor','r');
    if(a(i)==key)
        s=strcat(s,sprintf('     PRESENT at POSITION  :  %d',i));
        set(handles.edit4,'String',s);
       flag=1;
        set(GUI.h1(i),'backgroundcolor','g');
        
        s1=strcat(s1,'        ',num2str(i));
        pause(1);
        break;
    else
        s=strcat(s,sprintf('    FALSE   '));
        set(handles.edit4,'String',s);
    end
    pause(2);
   set(GUI.h2,'Visible','off');
end
if(flag==1)
    str=strcat('KEY FOUND AT POSITION->',num2str(i));
    set(handles.text3,'String',str);
    
    h=msgbox('key found');
else
    set(handles.text3,'String','KEY NOT FOUND');
     s=strcat(s,'  KEY NOT FOUND  ');
      set(handles.edit4,'String',s);
    h=msgbox('key not found');
end
set(GUI.h2,'Visible','off');
pause(4);
for i=1:n
    set(GUI.h1(i),'backgroundcolor','w');
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = uiputfile('*.txt','Save as');
fid = fopen(FileName,'wt');
fprintf(fid,'%s',get(handles.edit4,'String'))

fclose(fid);



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
