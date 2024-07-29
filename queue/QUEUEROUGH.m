function varargout = QUEUEROUGH(varargin)
% QUEUEROUGH MATLAB code for QUEUEROUGH.fig
%      QUEUEROUGH, by itself, creates a new QUEUEROUGH or raises the existing
%      singleton*.
%
%      H = QUEUEROUGH returns the handle to a new QUEUEROUGH or the handle to
%      the existing singleton*.
%
%      QUEUEROUGH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUEUEROUGH.M with the given input arguments.
%
%      QUEUEROUGH('Property','Value',...) creates a new QUEUEROUGH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before QUEUEROUGH_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to QUEUEROUGH_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help QUEUEROUGH

% Last Modified by GUIDE v2.5 14-Apr-2013 14:53:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @QUEUEROUGH_OpeningFcn, ...
                   'gui_OutputFcn',  @QUEUEROUGH_OutputFcn, ...
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


% --- Executes just before QUEUEROUGH is made visible.
function QUEUEROUGH_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to QUEUEROUGH (see VARARGIN)
clc;
global arr;
global rear;
global front;
rear=0;
front=0;
global i;
for i=1:5
    arr(i)=0;
end
global m;
m='';
global s
s='';
% Choose default command line output for QUEUEROUGH
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes QUEUEROUGH wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = QUEUEROUGH_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a=str2double(get(hObject,'String'));
if isnan(a)| ~isreal(a)
    set(handles.edit1,'String','');
    uicontrol(handles.edit1);
    t=msgbox('Please enter valid values','ERROR','error');
    g=str2double(get(hObject,'String'));
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
elseif a>5
    set(handles.edit1,'String','');
    uicontrol(handles.edit1);
    t=msgbox('Please enter values in range of 5');
else
    uicontrol(handles.edit4);
end

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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global b;
global rear;
global front;
global arr;
global a;
global m;
global s;
a=str2double(get(handles.edit1,'String'));
b=str2double(get(handles.edit4,'String'));
g=b;
if isnan(a)
    h=msgbox('Enter a MAX value');
elseif isnan(g)|| ~isreal(g)|| g<=0
uicontrol(handles.edit4);
set(handles.edit4,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
else
rear=rear+1;
axes(handles.axes1);
set(gca,'XtickLabel',arr);
s=strcat(s,sprintf('                Compare   %d  with   %d  : ',rear,a));
set(handles.edit6,'String',s);
if rear<=a
    set(handles.edit7,'String','Queue is Not FULL');
    if rear==1
        s=strcat(s,sprintf('   Inserting  %d  Into  QUEUE at position  %d      ',b,rear));
        set(handles.edit6,'String',s);
        set(handles.edit2,'String',rear);
        arr(rear)=b;
        bar(arr);set(gca,'XtickLabel',arr);
        front=front+1;
        set(handles.edit3,'String',front);
        set(handles.text5,'String',b);
        m=get(handles.text10,'String');
        set(handles.text10,'String','R');
        set(handles.text20,'String','F');
    elseif rear==2
                s=strcat(s,sprintf('    Inserting  %d  Into  QUEUE at position  %d      ',b,rear));
                set(handles.edit6,'String',s);
        set(handles.edit2,'String',rear);
        arr(rear)=b;
        bar(arr);set(gca,'XtickLabel',arr);
        set(handles.text6,'String',b);
           set(handles.text10,'String','');
        set(handles.text11,'String','R');
        p=get(handles.edit3,'String');
        t=strcmp(string(p),'NULL');
        if(t==1)
            set(handles.text21,'String','F');
            set(handles.edit3,'String',rear);
        end
        m=get(handles.text11,'String');
    elseif rear==3
                s=strcat(s,sprintf('    Inserting  %d  Into  QUEUE at position  %d      ',b,rear));
                set(handles.edit6,'String',s);
         set(handles.edit2,'String',rear);
        arr(rear)=b;
        bar(arr);set(gca,'XtickLabel',arr);
        set(handles.text7,'String',b);
        set(handles.text11,'String','');
        set(handles.text12,'String','R');
        p=get(handles.edit3,'String');
        t=strcmp(string(p),'NULL');
        if(t==1)
            set(handles.text22,'String','F');
            set(handles.edit3,'String',rear);
        end
        m=get(handles.text12,'String');
    elseif rear==4
                s=strcat(s,sprintf('    Inserting  %d  Into  QUEUE at position  %d      ',b,rear));
                set(handles.edit6,'String',s);
         set(handles.edit2,'String',rear);
        arr(rear)=b;
        bar(arr);set(gca,'XtickLabel',arr);
        set(handles.text8,'String',b);
        set(handles.text12,'String','');
        set(handles.text13,'String','R');
        p=get(handles.edit3,'String');
        t=strcmp(string(p),'NULL');
        if(t==1)
            set(handles.text23,'String','F');
            set(handles.edit3,'String',rear);
        end
        m=get(handles.text13,'String');
    elseif rear==5
                s=strcat(s,sprintf('     Inserting  %d  Into  QUEUE at position  %d      ',b,rear));
                set(handles.edit6,'String',s);
         set(handles.edit2,'String',rear);
        arr(rear)=b;
        bar(arr);set(gca,'XtickLabel',arr);
        set(handles.text9,'String',b);
        set(handles.text13,'String','');
        set(handles.text14,'String','R');
        p=get(handles.edit3,'String');
        t=strcmp(string(p),'NULL');
        if(t==1)
            set(handles.text24,'String','F');
            set(handles.edit3,'String',rear);
        end
        m=get(handles.text14,'String');
    end
else
    h=msgbox('Queue is FULL','ERROR','error');
    rear=a;
    s=strcat(s,sprintf('  QUEUE is Full   '));
    set(handles.edit6,'String',s);
end
if rear==a
     set(handles.edit7,'String','Queue is FULL');
end
end



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global rear;
global front;
global arr;
global a;
global m;
global s;
a=str2double(get(handles.edit1,'String'));
axes(handles.axes1);
bar(arr);
set(gca,'XtickLabel',arr);
s=strcat(s,sprintf('                Compare   %d  with   %d :  ',front,rear));
set(handles.edit6,'String',s);
if front==a
     set(handles.edit7,'String','Queue is EMPTY');
end
p=get(handles.edit2,'String');
t=strcmp(string(p),'NULL');
if t==1
    q=msgbox('Queue is EMPTY');
else
if front<=a
    if front==1
       
            
        set(handles.edit7,'String','Queue is Not FULL');
        set(handles.edit5,'String',num2str(arr(front)));
        s=strcat(s,sprintf('    Deleting %d  From  QUEUE at position  %d        ',arr(front),front));
                set(handles.edit6,'String',s);
                set(handles.text5,'String','');
                set(handles.text20,'String','');                
        if front==rear
             set(handles.edit3,'String','NULL');
             set(handles.edit2,'String','NULL');
             set(handles.text10,'String',''); 
        else       
        x=front+1;
        set(handles.edit3,'String',x);
        if x<=a
            set(handles.text21,'String','F');  
        end
        end
        set(handles.text15,'String',num2str(arr(front)));
        pause(1);
        set(handles.text15,'String','');
         
        arr(front)=0;
        bar(arr);set(gca,'XtickLabel',arr);
    elseif front==2
        set(handles.edit5,'String',num2str(arr(front)));
         s=strcat(s,sprintf('   Deleting %d  From  QUEUE at position  %d     ',arr(front),front));
                set(handles.edit6,'String',s);
                 set(handles.text6,'String','');
        set(handles.text21,'String','');
                
         if front==rear
             set(handles.edit3,'String','NULL');
             set(handles.edit2,'String','NULL');
             set(handles.text11,'String',''); 
         else
        x=front+1;
        set(handles.edit3,'String',x);
        if x<=a
            set(handles.text22,'String','F ');

        end
         end
       set(handles.text16,'String',num2str(arr(front)));
        pause(1);
        set(handles.text16,'String','');
        
         
        arr(front)=0;
        bar(arr);set(gca,'XtickLabel',arr);
    elseif front==3
        set(handles.edit5,'String',num2str(arr(front)));
         s=strcat(s,sprintf('   Deleting %d  From  QUEUE at position  %d         ',arr(front),front));
                set(handles.edit6,'String',s);
                set(handles.text7,'String','');
        set(handles.text22,'String','');
                
        
        if front==rear
             set(handles.edit3,'String','NULL');
             set(handles.edit2,'String','NULL');
             set(handles.text12,'String',''); 
        else
             x=front+1;
        set(handles.edit3,'String',x);
        if x<=a
            set(handles.text23,'String','F ');

        end
        end
        set(handles.text17,'String',num2str(arr(front)));
        pause(1);
        set(handles.text17,'String','');

        
        arr(front)=0;
        bar(arr);set(gca,'XtickLabel',arr);
    elseif front==4
        set(handles.edit5,'String',num2str(arr(front)));
         s=strcat(s,sprintf('   Deleting %d  From  QUEUE at position  %d       ',arr(front),front));
                set(handles.edit6,'String',s);
                set(handles.text8,'String','');
        set(handles.text23,'String','');
               
        
        if front==rear
             set(handles.edit3,'String','NULL');
             set(handles.edit2,'String','NULL');
             set(handles.text13,'String',''); 
        else
        x=front+1;
        set(handles.edit3,'String',x);
        if x<=a
            set(handles.text24,'String',' F');

        end
        end
         set(handles.text18,'String',num2str(arr(front)));
        pause(1);
        set(handles.text18,'String','');
        
       
        arr(front)=0;
        bar(arr);set(gca,'XtickLabel',arr);
    elseif front==5
        set(handles.edit5,'String',num2str(arr(front)));
         s=strcat(s,sprintf('   Deleting %d  From  QUEUE at position  %d        ',arr(front),front));
                set(handles.edit6,'String',s);
                 set(handles.text9,'String','');
        set(handles.text24,'String','');
        set(handles.text14,'String',''); 
                set(handles.text19,'String',num2str(arr(front)));
        pause(1);
        set(handles.text19,'String','');
        arr(front)=0;
        bar(arr);set(gca,'XtickLabel',arr);
        set(handles.edit7,'String','Queue is EMPTY');
        set(handles.edit3,'String','NULL');
       set(handles.edit2,'String','NULL');
    end
else
   t=msgbox('QUEUE is Empty');
   s=strcat(s,sprintf('    Queue is EMPTY'));
   set(handles.edit6,'String',s);
end
front=front+1;
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



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
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
FileName = uiputfile('*.txt','Save as');
fid = fopen(FileName,'wt');
fprintf(fid,'%s',get(handles.edit6,'String'))
% Data=get(handles.uitable3,'Data');
% writetable(Data,FileName);
fclose(fid);
