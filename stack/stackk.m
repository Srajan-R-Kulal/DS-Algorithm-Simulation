function varargout = stackk(varargin)
% STACKK MATLAB code for stackk.fig
%      STACKK, by itself, creates a new STACKK or raises the existing
%      singleton*.
%
%      H = STACKK returns the handle to a new STACKK or the handle to
%      the existing singleton*.
%
%      STACKK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STACKK.M with the given input arguments.
%
%      STACKK('Property','Value',...) creates a new STACKK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before stackk_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to stackk_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help stackk

% Last Modified by GUIDE v2.5 02-Apr-2013 10:52:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @stackk_OpeningFcn, ...
                   'gui_OutputFcn',  @stackk_OutputFcn, ...
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


% --- Executes just before stackk is made visible.
function stackk_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to stackk (see VARARGIN)

% Choose default command line output for stackk
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
clc;

global stack;
for i=1:5
    stack(i)=0;
end
global s;
s='';
% UIWAIT makes stackk wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = stackk_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = uiputfile('*.txt','Save as');
fid = fopen(FileName,'wt');
fprintf(fid,'%s',get(handles.edit1,'String'))
% Data=get(handles.uitable3,'Data');
% writetable(Data,FileName);
fclose(fid);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global stack;
global s;
g=str2double(get(handles.edit4,'String'));
if isnan(g)|| ~isreal(g)
uicontrol(handles.edit4);
set(handles.edit4,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
else
element=str2double(get(handles.edit4,'String'));
top=str2double(get(handles.edit2,'String'));
MAXSIZE=str2double(get(handles.edit3,'String'));	
axes(handles.axes1);
bar(stack);
set(gca,'XtickLabel',stack);

s=strcat(s,sprintf('                    COMPARE:   %d      and     %d       \n',top,MAXSIZE));
set(handles.edit1,'String',s);
if top==MAXSIZE
    s=strcat(s,sprintf('          STACK IS FULL       \n' ));
    set(handles.edit1,'String',s);
    set(handles.text15,'String','STACK IS FULL ');
   h=msgbox('STACK IS FULL');
else
    top=top+1;
    set(handles.text15,'String','STACK IS NOT FULL ');
    s=strcat(s,sprintf('         PUSH ELEEMENT %d   at TOP    %d      \n',element,top ));
    set(handles.edit1,'String',s);
     set(handles.edit2,'String',top);
    stack(top)=element;
    set(gca,'XtickLabel',stack);
    if top==1
         bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text6,'String',element);
         pause(1);
         set(handles.text6,'String','');
         set(handles.text7,'String',element);
         pause(1);
%          bar(stack);
         set(handles.text7,'String','');
         set(handles.text8,'String',element);
         pause(1);
%          bar(stack);
         set(handles.text8,'String','');
         set(handles.text9,'String',element);
         pause(1);
%          bar(stack);
         set(handles.text9,'String','');
         set(handles.text10,'String',element);
    elseif top==2
        bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text6,'String',element);
         pause(1);
         set(handles.text6,'String','');
         set(handles.text7,'String',element);
         pause(1);
%          bar(stack);
         set(handles.text7,'String','');
         set(handles.text8,'String',element);
         pause(1);
%          bar(stack);
         set(handles.text8,'String','');
         set(handles.text9,'String',element);
     elseif top==3
         bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text6,'String',element);
         pause(1);
         set(handles.text6,'String','');
         set(handles.text7,'String',element);
         pause(1);
%          bar(stack);
         set(handles.text7,'String','');
         set(handles.text8,'String',element);
     elseif top==4
         bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text6,'String',element);
         pause(1);
%          bar(stack);
         set(handles.text6,'String','');
         set(handles.text7,'String',element);
     elseif top==5
         bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text6,'String',element);
    end
    set(handles.text13,'String','INSERTED');
    set(gca,'XtickLabel',stack);
end

end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=str2double(get(handles.edit4,'String'));
if isnan(g)|| ~isreal(g)
uicontrol(handles.edit4);
set(handles.edit4,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
end
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global stack;
global s;

top=str2double(get(handles.edit2,'String'));
% MAXSIZE=str2double(get(handles.edit19,'String'));	
axes(handles.axes1);
bar(stack);
set(gca,'XtickLabel',stack);

s=strcat(s,sprintf('         COMPARE TOP  %d with 0     \n',top ));
set(handles.edit1,'String',s);
if top==0
     s=strcat(s,sprintf('          STACK IS EMPTY      \n' ));
    set(handles.edit1,'String',s);
    set(handles.text15,'String','STACK IS EMPTY ');
    h=msgbox('STACK IS EMPTY');
else
    element=stack(top);
    set(handles.text15,'String','STACK IS NOT EMPTY ');
    s=strcat(s,sprintf('         POP ELEEMENT %d  from TOP    %d      \n',element,top ));
    set(handles.edit1,'String',s);
    set(handles.edit5,'String',element);
    if top==5
        stack(top)=0;
        top=top-1;
        bar(stack);
        set(gca,'XtickLabel',stack);
        set(handles.text6,'ForegroundColor','r');
        pause(1);
        set(handles.text6,'String','');
         pause(1);
    elseif top==4
        stack(top)=0;
        top=top-1;
        bar(stack);
        set(gca,'XtickLabel',stack);
         set(handles.text6,'String',element);
         set(handles.text7,'String','');
         pause(1);
         set(handles.text6,'String','');
    elseif top==3
        stack(top)=0;
        top=top-1;
        bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text7,'ForegroundColor','r');
         set(handles.text7,'String',element);
         set(handles.text8,'String','');
         pause(1);
         set(handles.text6,'String',element);
         set(handles.text7,'String','');
         pause(1);
         set(handles.text6,'String','');
      elseif top==2
        stack(top)=0;
        top=top-1;
        bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text8,'ForegroundColor','r');
         set(handles.text8,'String',element);
         set(handles.text9,'String','');
         pause(1);
         set(handles.text7,'String',element);
         set(handles.text8,'String','');
         pause(1);
         set(handles.text6,'String',element);
         set(handles.text7,'String','');
         pause(1);  
         set(handles.text6,'String','');
     elseif top==1
        stack(top)=0;
        top=top-1;
        bar(stack);set(gca,'XtickLabel',stack);
         set(handles.text9,'ForegroundColor','r');
         set(handles.text9,'String',element);
         set(handles.text10,'String','');
         pause(1);
         set(handles.text8,'String',element);
         set(handles.text9,'String','');
         pause(1);
         set(handles.text7,'String',element);
         set(handles.text8,'String','');
         pause(1);
         set(handles.text6,'String',element);
         set(handles.text7,'String','');
         pause(1);  
         pause(1);  
         set(handles.text6,'String','');
         
    end
    set(handles.text14,'String','DELETED');
    set(handles.edit2,'String',top);
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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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
