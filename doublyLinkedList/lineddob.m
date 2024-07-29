function varargout = lineddob(varargin)
% LINEDDOB MATLAB code for lineddob.fig
%      LINEDDOB, by itself, creates a new LINEDDOB or raises the existing
%      singleton*.
%
%      H = LINEDDOB returns the handle to a new LINEDDOB or the handle to
%      the existing singleton*.
%
%      LINEDDOB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LINEDDOB.M with the given input arguments.
%
%      LINEDDOB('Property','Value',...) creates a new LINEDDOB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lineddob_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lineddob_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lineddob

% Last Modified by GUIDE v2.5 02-May-2013 10:13:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lineddob_OpeningFcn, ...
                   'gui_OutputFcn',  @lineddob_OutputFcn, ...
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


% --- Executes just before lineddob is made visible.
function lineddob_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lineddob (see VARARGIN)

% Choose default command line output for lineddob
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lineddob wait for user response (see UIRESUME)
% uiwait(handles.figure1);
x=0.05;
y=0.8;
w=0.03;
h=0.1;
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;

n=0;

a1=annotation('textbox',[x y 0.04 h]);
set(a1,'String','HEAD');
x1=x+w;
y11=y+(h/2);
x2=x1+0.08;
y22=y11;
X=[0.09,x2];
Y=[y11,y22];
arr1=annotation('arrow',X,Y,'Linewidth',2);

x=x2;
l2(1)=annotation('textbox',[x y w h],'String','NULL');
 x=x+w;
 n1(1)=annotation('textbox',[x y w h]);
 x=x+w;
 l1(1)=annotation('textbox',[x y w h],'String','NULL');

 
 for i=2 :6
     x11=x+w;
     y11=y+(h/2);
     x22=x11+0.05;
     y22=y11;
     
     X=[x11,x22];
     Y=[y11,y22];
     
    arr1(i)=annotation('arrow',X,Y,'Linewidth',2);
     
     x33=x11;
     y33=y11+0.02;
     x44=x22;
     y44=y33;
     
     X1=[x44,x33];
     Y1=[y44,y33];
     arrr(i)=annotation('arrow',X1,Y1,'Linewidth',2);
     
     x=x44;
l2(i)=annotation('textbox',[x y w h],'String','NULL');
 x=x+w;
 n1(i)=annotation('textbox',[x y w h]);
 x=x+w;
 l1(i)=annotation('textbox',[x y w h],'String','NULL');

     
%  l2(i)=annotation('textbox',[x y w h],'String','NULL');
%  x=x+w;
%  n1(i)=annotation('textbox',[x y w h]);
%  x=x+w;
%  l1(i)=annotation('textbox',[x y w h],'String','NULL');
% % 
% x1=x+w;
% y11=y+(h/2);
% x2=x1+0.05;
% y22=y11;
% X = [x1 x2];    % adjust length and location of arrow 
% Y= [y11 y22];
% set(ar1(i),'Visible','off');
% set(n1(i),'Visible','off');
% set(l1(i),'Visible','off');
end
for i=1 :6
    set(arr1(i),'Visible','off');
    set(arrr(i),'Visible','off');
set(n1(i),'Visible','off');
set(l1(i),'Visible','off');
set(l2(i),'Visible','off');
end
for i = 1:7
  GUI.textElh2(i) = uicontrol('Style', 'text','FontSize',15,'Position', [(i)*200 700, 90,25]);
end
% arr1=annotation('arrow',X1,Y1,'Linewidth',2);

% --- Outputs from this function are returned to the command line.
function varargout = lineddob_OutputFcn(hObject, eventdata, handles) 
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
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;


n=n+1;

ele=str2num(get(handles.edit1,'String'));
set(handles.text1,'String',ele);
if(n>=1)
pause(2);
for i=1:n
 set(GUI.textElh2(i),'String',num2str(ele));
 pause(1);
    if(i~=1)
        if((n-1)~=1)
  set(l2(n-1),'String','LPTR');
        else
            set(l2(n-1),'String','NULL'); 
        end
        
  set(l1(n-1),'String','RPTR');
%   pause(1);
  set(GUI.textElh2(i-1),'String','');
    end
end
if n==1
    set(l2(n),'String','NULL');
else
set(l2(n),'String','LPTR');
end

set(arr1(n),'Visible','on');
set(arrr(n),'Visible','on');
pause(1);
set(n1(n),'Visible','on');
set(l1(n),'Visible','on');
set(l2(n),'Visible','on');
pause(1);
set(n1(n),'String',num2str(ele));
pause(1);
set(GUI.textElh2(n),'String','');
pause(1);

set(l1(n),'String','NULL');

end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)|| g<=0
uicontrol(handles.edit1);
set(handles.edit1,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;

n=n+1;
ele=str2num(get(handles.edit1,'String'));
set(handles.text1,'String',ele);

if(n==1)
    
set(GUI.textElh2(n),'String',num2str(ele));
 pause(1);
set(arr1(n),'Visible','on');
set(arrr(n),'Visible','on');
pause(1);
set(n1(n),'Visible','on');
set(l1(n),'Visible','on');
set(l2(n),'Visible','on');
pause(1);
set(n1(n),'String',num2str(ele));
pause(1);
set(GUI.textElh2(n),'String','');
pause(1);
% set(l1(1),'Visible','on');
set(l1(n),'String','NULL');
else
      set(arr1(n),'Visible','on');
      set(arrr(n),'Visible','on')
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
     set(l2(n),'String','LPTR');
    for i=n:-1:2
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
         set(n1(i-1),'String','');
         if i==2
         set(l1(i-1),'String','RPTR');
         set(l2(i-1),'String','NULL');
         else
            set(l1(i-1),'String','RPTR');
         set(l2(i-1),'String','LPTR'); 
         end
         
    end
    pause(1);
    set(l1(i-1),'String','RPTR');
%       set(l2(i-1),'String','LPTR');
    set(n1(1),'String',ele);
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)|| g<=0
uicontrol(handles.edit2);
set(handles.edit2,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
end
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;




pos=str2num(get(handles.edit2,'String'));
if pos >n+1 
    msgbox('Invalid POsition');
else
    n=n+1;
disp(n);
ele=str2num(get(handles.edit1,'String'));
set(handles.text1,'String',ele);
set(arr1(n),'Visible','on');
set(arrr(n),'Visible','on');

    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
     set(l2(n),'String','LPTR');
    pause(1);
    if(pos~=1 && pos==n)
        
        for i=1:n
 set(GUI.textElh2(i),'String',num2str(ele));
 pause(1);
    if(i~=1)
  set(l1(n-1),'String','RPTR');
   set(l2(n-1),'String','LPTR');
%   pause(1);
  set(GUI.textElh2(i-1),'String','');
    end
       
end

         set(l1(n-1),'String','RPTR');
          set(l2(n-1),'String','LPTR');
         pause(1);
        set(n1(n),'String',ele);
        set(GUI.textElh2(n),'String','');
    elseif pos==1 && n==1
%         h=msgbox('ok');
    set(arr1(n),'Visible','on');
    set(arrr(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
    set(l2(n),'String','NULL');
    set(l1(1),'String','LINK');
    set(n1(1),'String',ele);
    
    elseif pos==1
            
    set(arr1(n),'Visible','on');
    set(arrr(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
     set(l2(n),'String','LPTR');
   
    for i=n:-1:2
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
         set(n1(i-1),'String','');
         set(l1(i-1),'String','RPTR');
          set(l2(i-1),'String','LPTR');
    end
    pause(1);
     set(l1(1),'String','RPTR');
     set(l2(1),'String','NULL');
    
     set(n1(1),'String',ele);
    
    else
        for i=n:-1:pos+1
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
        set(n1(i-1),'String','');
        set(l1(i-1),'String','RPTR'); 
        set(l2(i-1),'String','LPTR'); 
        end
    pause(1);
    set(l1(pos),'String','RPTR');
    set(l2(pos),'String','LPTR');
    set(n1(pos),'String',ele);
        
    end
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;

if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    ele=get(n1(1),'String');
    set(handles.text1,'String',ele);
    for i=1:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
    end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
    
 end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;


if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    ele=get(n1(n),'String');
    set(handles.text1,'String',ele);
    

    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    pause(1);
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
 end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;

if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    pos=str2num(get(handles.edit2,'String'));
    if pos >n
    msgbox('Invalid POsition');
    else
    ele=get(n1(pos),'String');
    set(handles.text1,'String',ele);
    if pos==n

    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
    
    elseif pos==1
         for i=1:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
    else
         for i=pos:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
    end
    
    end
    
 end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;

flag=0;
disp(n);
if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    pos=str2num(get(handles.edit2,'String'));
       
    for j=1:n
         disp(pos);
         disp(j);
         
         ele=str2num(get(n1(j),'String'));
        if(ele==pos)
            set(handles.text1,'String',ele);
       if j==n

    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
    flag=1;
    break;
    elseif j==1
         for i=1:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
    flag=1;
    break;
    else
         for i=j:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    n=n-1;
    if n~=0
       set(l1(n),'String','NULL'); 
    end
    flag=1;
    break
    end
            
    end
        end
    if(flag==0)
       h= msgbox('ELEMENT DOES NOT EXIST');
    end
    
 end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n1;
global p r;
global n;
global max;
global min;
q=get(n1(1),'String');
max=str2double(q);
min=str2double(q);
for i=1:n
    p=get(n1(i),'String');
    r=str2double(p);
    if r>max
        max=r;
    end
    if r<min
        min=r;
    end
end
set(handles.text2,'String',num2str(max));
set(handles.text3,'String',num2str(min));
