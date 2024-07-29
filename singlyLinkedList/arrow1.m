function varargout = arrow1(varargin)
% ARROW1 MATLAB code for arrow1.fig
%      ARROW1, by itself, creates a new ARROW1 or raises the existing
%      singleton*.
%
%      H = ARROW1 returns the handle to a new ARROW1 or the handle to
%      the existing singleton*.
%
%      ARROW1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARROW1.M with the given input arguments.
%
%      ARROW1('Property','Value',...) creates a new ARROW1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before arrow1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to arrow1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help arrow1

% Last Modified by GUIDE v2.5 01-May-2013 16:03:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arrow1_OpeningFcn, ...
                   'gui_OutputFcn',  @arrow1_OutputFcn, ...
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


% --- Executes just before arrow1 is made visible.
function arrow1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arrow1 (see VARARGIN)

% Choose default command line output for arrow1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes arrow1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
x=0.05;
y=0.8;
w=0.04;
h=0.1;

global ar1;
global n1;
global l1;
global n;
global GUI;

n=0;

a1=annotation('textbox',[x y w h]);
set(a1,'String','HEAD');
x1=x+w;
y11=y+(h/2);
x2=x1+0.04;
y22=y11;
X = [x1 x2];    % adjust length and location of arrow 
Y= [y11 y22];
for i=1 :7
ar1(i)=annotation('arrow',X,Y,'Linewidth',2);


x=x2;

n1(i)=annotation('textbox',[x y w h]);

x=x2+w;
l1(i)=annotation('textbox',[x y w h],'String','NULL');

x1=x+w;
y11=y+(h/2);
x2=x1+0.05;
y22=y11;
X = [x1 x2];    % adjust length and location of arrow 
Y= [y11 y22];
set(ar1(i),'Visible','off');
set(n1(i),'Visible','off');
set(l1(i),'Visible','off');
end
for i = 1:7
  GUI.textElh2(i) = uicontrol('Style', 'text','FontSize',15,'Position', [(i)*170 590, 90,25]);
end
% % for i=1:5
% x1=x+w;
% y1=y+(h/2);
% x2=x1+0.05;
% y2=y1;
% x = [x1 x2];    % adjust length and location of arrow 
% y = [y1 y2];
% ar1=annotation('arrow',x,y,'Linewidth',2);
% set(ar1,'Visible','off');
% % x=x+w;
% y=y;
% n1=annotation('textbox',[x y w h]);
% end

% --- Outputs from this function are returned to the command line.
function varargout = arrow1_OutputFcn(hObject, eventdata, handles) 
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
% x_start =100;x_end = 100;
% 
% %Y- Beginning and ending y-coordinates
% y_start =100;y_end = 100; 
% anArrow = annotation('textarrow');
% % anArrow.Parent = gca;
% anArrow.X = [x_start,x_end]; % set the x-property
% anArrow.Y = [y_start ,y_end];
% 
% anArrow = annotation('textarrow',[anArrow.X anArrow.Y]);
% anArrow.String = 'cos(3\pi/2)';
% anArrow.Color = 'green';
% x = [0.1 0.2];    % adjust length and location of arrow 
% y = [0.1 0.1];      % adjust hieght and width of arrow
% annotation('textarrow',x,y,'String',' Growth ','FontSize',13,'Linewidth',2)
% annotation('arrow',x,y,'Linewidth',2)
global ar1;
global n1;
global l1;
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
  set(l1(n-1),'String','LINK');
%   pause(1);
  set(GUI.textElh2(i-1),'String','');
    end
end

set(ar1(n),'Visible','on');
pause(1);
set(n1(n),'Visible','on');
set(l1(n),'Visible','on');
pause(1);
set(n1(n),'String',num2str(ele));
pause(1);
set(GUI.textElh2(n),'String','');
pause(1);
% set(l1(1),'Visible','on');
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
global ar1;
global n1;
global l1;
global n;

global GUI;

n=n+1;

ele=str2num(get(handles.edit1,'String'));
set(handles.text1,'String',ele);

if(n==1)
    
set(GUI.textElh2(n),'String',num2str(ele));
 pause(1);
set(ar1(n),'Visible','on');
pause(1);
set(n1(n),'Visible','on');
set(l1(n),'Visible','on');
pause(1);
set(n1(n),'String',num2str(ele));
pause(1);
set(GUI.textElh2(n),'String','');
pause(1);
% set(l1(1),'Visible','on');
set(l1(n),'String','NULL');
else
      set(ar1(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
    
    for i=n:-1:2
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
         set(n1(i-1),'String','');
         set(l1(i-1),'String','LINK');
    end
    pause(1);
     set(l1(1),'String','LINK');
    set(n1(1),'String',ele);
end
%  pause(1);
%     if(i~=1)
%   set(l1(n-1),'String','LINK');
% %   pause(1);
%   set(GUI.textElh2(i-1),'String','');
%     end
% end

% if(n>=1)
% pause(2);
% for i=1:n
%  set(GUI.textElh2(i),'String',num2str(ele));
%  pause(1);
%     if(i~=1)
%   set(l1(n-1),'String','LINK');
% %   pause(1);
%   set(GUI.textElh2(i-1),'String','');
%     end
% end
% 
% set(ar1(n),'Visible','on');
% pause(1);
% set(n1(n),'Visible','on');
% set(l1(n),'Visible','on');
% pause(1);
% set(n1(n),'String',num2str(ele));
% pause(1);
% set(GUI.textElh2(n),'String','');
% pause(1);
% % set(l1(1),'Visible','on');
% set(l1(n),'String','NULL');
% 
% end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ar1;
global n1;
global l1;
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
set(ar1(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
    pause(1);
    if(pos~=1 && pos==n)
        
        for i=1:n
 set(GUI.textElh2(i),'String',num2str(ele));
 pause(1);
    if(i~=1)
  set(l1(n-1),'String','LINK');
%   pause(1);
  set(GUI.textElh2(i-1),'String','');
    end
       
end

         set(l1(n-1),'String','LINK');
         pause(1);
        set(n1(n),'String',ele);
        set(GUI.textElh2(n),'String','');
    elseif pos==1 && n==1
%         h=msgbox('ok');
    set(ar1(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
    set(l1(1),'String','LINK');
    set(n1(1),'String',ele);
    
    elseif pos==1
            
    set(ar1(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    pause(1);
    set(l1(n),'String','NULL');
   
    for i=n:-1:2
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
         set(n1(i-1),'String','');
         set(l1(i-1),'String','LINK');
    end
    pause(1);
     set(l1(1),'String','LINK');
    set(n1(1),'String',ele);
    
    else
        for i=n:-1:pos+1
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
        set(n1(i-1),'String','');
        set(l1(i-1),'String','LINK'); 
        end
    pause(1);
    set(l1(pos),'String','LINK');
    set(n1(pos),'String',ele);
        
    end
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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ar1;
global n1;
global l1;
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
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
 end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ar1;
global n1;
global l1;
global n;
global GUI;
disp(n);
if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    ele=get(n1(n),'String');
    set(handles.text1,'String',ele);
    
%     
    pause(1);
    set(l1(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
 end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ar1;
global n1;
global l1;
global n;
global GUI;
disp(n);
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
%     
    pause(1);
    set(l1(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
    elseif pos==1
         for i=1:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
    else
         for i=pos:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
    end
    
    end
    
 end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ar1;
global n1;
global l1;
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
%     
    pause(1);
    set(l1(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
    flag=1;
    break;
    elseif j==1
         for i=1:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
    flag=1;
    break;
    else
         for i=j:n-1
        pause(1);
        set(n1(i),'String',get(n1(i+1),'String'));
        end
    pause(1);
    set(l1(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(ar1(n),'Visible','OFF');
    n=n-1;
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
