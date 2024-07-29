function varargout = cirdoble(varargin)
% CIRDOBLE MATLAB code for cirdoble.fig
%      CIRDOBLE, by itself, creates a new CIRDOBLE or raises the existing
%      singleton*.
%
%      H = CIRDOBLE returns the handle to a new CIRDOBLE or the handle to
%      the existing singleton*.
%
%      CIRDOBLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRDOBLE.M with the given input arguments.
%
%      CIRDOBLE('Property','Value',...) creates a new CIRDOBLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cirdoble_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cirdoble_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cirdoble

% Last Modified by GUIDE v2.5 20-Feb-2014 01:17:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cirdoble_OpeningFcn, ...
                   'gui_OutputFcn',  @cirdoble_OutputFcn, ...
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


% --- Executes just before cirdoble is made visible.
function cirdoble_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cirdoble (see VARARGIN)

% Choose default command line output for cirdoble
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
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
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;


n=0;

a1=annotation('textbox',[x y 0.04 h]);
set(a1,'String','HEAD');
x1=x+0.04;
y11=y+(h/2);
x2=x1+0.08;
y22=y11;
X=[x1,x2];
Y=[y11,y22];
arr1=annotation('arrow',X,Y,'Linewidth',2);

x=x2;


ax1=x-w;
ay1=y+0.02;
ax2=x;
ay2=y+0.02;
AR1=[ax1 ax2];
AR2=[ay1 ay2];
arr11(1)=annotation('arrow',AR1,AR2,'Linewidth',2);


bx1=x-w;
by1=y+0.07;
bx2=x;
by2=y+0.07;
BR1=[bx1 bx2];
BR2=[by1 by2];
line1(1)=annotation('line',BR1,BR2,'Linewidth',2);


cx1=x-w;
cy1=y+0.02;
cx2=x-w;
cy2=y-0.02;
CR1=[cx1 cx2];
CR2=[cy1 cy2];
line2(1)=annotation('line',CR1,CR2,'Linewidth',2);

dx1=x-w;
dy1=y-0.02;
dx2=x+4*w;
dy2=y-0.02;
DR1=[dx1 dx2];
DR2=[dy1 dy2];
line3(1)=annotation('line',DR1,DR2,'Linewidth',2);


ex1=x+4*w;
ey1=y-0.02;
ex2=x+4*w;
ey2=y+0.02;
ER1=[ex1 ex2];
ER2=[ey1 ey2];
line4(1)=annotation('line',ER1,ER2,'Linewidth',2);



fx1=x+4*w;
fy1=y+0.02;
fx2=x+3*w;
fy2=y+0.02;
FR1=[fx1 fx2];
FR2=[fy1 fy2];
line5(1)=annotation('line',FR1,FR2,'Linewidth',2);


gx1=x-w;
gy1=y+0.07;
gx2=x-w;
gy2=y+0.12;
GR1=[gx1 gx2];
GR2=[gy1 gy2];
line6(1)=annotation('line',GR1,GR2,'Linewidth',2);


hx1=x-w;
hy1=y+0.12;
hx2=x+4*w;
hy2=y+0.12;
HR1=[hx1 hx2];
HR2=[hy1 hy2];
line7(1)=annotation('line',HR1,HR2,'Linewidth',2);



ix1=x+4*w;
iy1=y+0.12;
ix2=x+4*w;
iy2=y+0.07;
IR1=[ix1 ix2];
IR2=[iy1 iy2];
line8(1)=annotation('line',IR1,IR2,'Linewidth',2);


jx1=x+4*w;
jy1=y+0.07;
jx2=x+3*w;
jy2=y+0.07;
JR1=[jx1 jx2];
JR2=[jy1 jy2];
line9(1)=annotation('arrow',JR1,JR2,'Linewidth',2);


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

     
 ax1=x44-w;
ay1=y+0.02;
ax2=x44;
ay2=y+0.02;
AR1=[ax1 ax2];
AR2=[ay1 ay2];
arr11(i)=annotation('arrow',AR1,AR2,'Linewidth',2);


bx1=x44-w;
by1=y+0.07;
bx2=x44;
by2=y+0.07;
BR1=[bx1 bx2];
BR2=[by1 by2];
line1(i)=annotation('line',BR1,BR2,'Linewidth',2);


cx1=x44-w;
cy1=y+0.02;
cx2=x44-w;
cy2=y-0.02;
CR1=[cx1 cx2];
CR2=[cy1 cy2];
line2(i)=annotation('line',CR1,CR2,'Linewidth',2);

% dx1=x44-w;
dy1=y-0.02;
dx2=x44+4*w;
dy2=y-0.02;
DR1=[dx1 dx2];
DR2=[dy1 dy2];
line3(i)=annotation('line',DR1,DR2,'Linewidth',2);


ex1=x44+4*w;
ey1=y-0.02;
ex2=x44+4*w;
ey2=y+0.02;
ER1=[ex1 ex2];
ER2=[ey1 ey2];
line4(i)=annotation('line',ER1,ER2,'Linewidth',2);



fx1=x44+4*w;
fy1=y+0.02;
fx2=x44+3*w;
fy2=y+0.02;
FR1=[fx1 fx2];
FR2=[fy1 fy2];
line5(i)=annotation('line',FR1,FR2,'Linewidth',2);


gx1=x44-w;
gy1=y+0.07;
gx2=x44-w;
gy2=y+0.12;
GR1=[gx1 gx2];
GR2=[gy1 gy2];
line6(i)=annotation('line',GR1,GR2,'Linewidth',2);


% hx1=x44-w;
hy1=y+0.12;
hx2=x44+4*w;
hy2=y+0.12;
HR1=[hx1 hx2];
HR2=[hy1 hy2];
line7(i)=annotation('line',HR1,HR2,'Linewidth',2);



ix1=x44+4*w;
iy1=y+0.12;
ix2=x44+4*w;
iy2=y+0.07;
IR1=[ix1 ix2];
IR2=[iy1 iy2];
line8(i)=annotation('line',IR1,IR2,'Linewidth',2);


jx1=x44+4*w;
jy1=y+0.07;
jx2=x44+3*w;
jy2=y+0.07;
JR1=[jx1 jx2];
JR2=[jy1 jy2];
line9(i)=annotation('arrow',JR1,JR2,'Linewidth',2);
 
 
 
 
 
 
%  
end
for i=1 :6
    set(arr1(i),'Visible','off');
    set(arrr(i),'Visible','off');
set(n1(i),'Visible','off');
set(l1(i),'Visible','off');
set(l2(i),'Visible','off');
set(arr11(i),'Visible','off');

set(line1(i),'Visible','off');
set(line2(i),'Visible','off');

set(line3(i),'Visible','off');

set(line4(i),'Visible','off');

set(line5(i),'Visible','off');

set(line6(i),'Visible','off');

set(line7(i),'Visible','off');

set(line8(i),'Visible','off');

set(line9(i),'Visible','off');



end


for i = 1:7
  GUI.textElh2(i) = uicontrol('Style', 'text','FontSize',15,'Position', [(i)*200 700, 90,25]);
end
% UIWAIT makes cirdoble wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cirdoble_OutputFcn(hObject, eventdata, handles) 
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
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;


n=n+1;

ele=str2num(get(handles.edit1,'String'));
% set(handles.text1,'String',ele);
if(n>=1)
pause(2);
for i=1:n
 set(GUI.textElh2(i),'String',num2str(ele));
 pause(1);
    if(i~=1)
        if((n-1)~=1)
  set(l2(n-1),'String','LPTR');
        else
            set(l2(n-1),'String','LAST'); 
        end
        
  set(l1(n-1),'String','RPTR');
%   pause(1);
  set(GUI.textElh2(i-1),'String','');
    end
end
if n==1
    set(l2(n),'String','NULL');
    set(arr11(n),'Visible','on');

set(line1(n),'Visible','on');
set(line2(n),'Visible','on');

set(line3(n),'Visible','on');

set(line4(n),'Visible','on');

set(line5(n),'Visible','on');

set(line6(n),'Visible','on');

set(line7(n),'Visible','on');

set(line8(n),'Visible','on');

set(line9(n),'Visible','on');


else
set(l2(n),'String','LPTR');

set(line3(n-1),'Visible','off');
set(line4(n-1),'Visible','off');
set(line5(n-1),'Visible','off');

set(line7(n-1),'Visible','off');
set(line8(n-1),'Visible','off');
set(line9(n-1),'Visible','off');

end

set(line3(n),'Visible','on');

set(line4(n),'Visible','on');

set(line5(n),'Visible','on');

set(line7(n),'Visible','on');

set(line8(n),'Visible','on');

set(line9(n),'Visible','on');




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

set(l1(n),'String','FIRST');

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
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;

n=n+1;

ele=str2num(get(handles.edit1,'String'));
% set(handles.text1,'String',ele);

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

set(arr11(n),'Visible','on');

set(line1(n),'Visible','on');
set(line2(n),'Visible','on');

set(line3(n),'Visible','on');

set(line4(n),'Visible','on');

set(line5(n),'Visible','on');

set(line6(n),'Visible','on');

set(line7(n),'Visible','on');

set(line8(n),'Visible','on');

set(line9(n),'Visible','on');





else
      set(arr1(n),'Visible','on');
      set(arrr(n),'Visible','on')
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','FIRST');
     set(l2(n),'String','LPTR');
     
     set(line3(n-1),'Visible','off');
set(line4(n-1),'Visible','off');
set(line5(n-1),'Visible','off');

set(line7(n-1),'Visible','off');
set(line8(n-1),'Visible','off');
set(line9(n-1),'Visible','off');

     set(line3(n),'Visible','on');

set(line4(n),'Visible','on');

set(line5(n),'Visible','on');

set(line7(n),'Visible','on');

set(line8(n),'Visible','on');

set(line9(n),'Visible','on');


    for i=n:-1:2
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
         set(n1(i-1),'String','');
         if i==2
         set(l1(i-1),'String','RPTR');
         set(l2(i-1),'String','LAST');
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
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;







pos=str2num(get(handles.edit2,'String'));
if pos >n+1 
    msgbox('Invalid POsition');
else
    n=n+1;
disp(n);
ele=str2num(get(handles.edit1,'String'));
% set(handles.text1,'String',ele);
set(arr1(n),'Visible','on');
set(arrr(n),'Visible','on');

    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','FIRST');
     set(l2(n),'String','LPTR');
     
     set(arr1(n),'Visible','on');
    set(arrr(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','FIRST');
     set(l2(n),'String','LPTR');
     
%      set(line3(n-1),'Visible','off');
% set(line4(n-1),'Visible','off');
% set(line5(n-1),'Visible','off');
% 
% set(line7(n-1),'Visible','off');
% set(line8(n-1),'Visible','off');
% set(line9(n-1),'Visible','off');
%      
%      
     
     
     
     
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
       set(l1(n-1),'String','RPTR');
          set(l2(n-1),'String','LPTR');
         pause(1);
        set(n1(n),'String',ele);
        set(GUI.textElh2(n),'String','');
        end
        set(line3(n-1),'Visible','off');
set(line4(n-1),'Visible','off');
set(line5(n-1),'Visible','off');

set(line7(n-1),'Visible','off');
set(line8(n-1),'Visible','off');
set(line9(n-1),'Visible','off');

set(line3(n),'Visible','on');
set(line4(n),'Visible','on');
set(line5(n),'Visible','on');

set(line7(n),'Visible','on');
set(line8(n),'Visible','on');
set(line9(n),'Visible','on');
   
        
    elseif pos==1 && n==1
%         h=msgbox('ok');
    set(arr1(n),'Visible','on');
    set(arrr(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','FIRST');
    set(l2(n),'String','LAST');
    set(l1(1),'String','RPTR');
    set(n1(1),'String',ele);
    set(arr11(n),'Visible','on');

set(line1(n),'Visible','on');
set(line2(n),'Visible','on');

set(line3(n),'Visible','on');

set(line4(n),'Visible','on');

set(line5(n),'Visible','on');

set(line6(n),'Visible','on');

set(line7(n),'Visible','on');

set(line8(n),'Visible','on');

set(line9(n),'Visible','on');

    

    elseif pos==1
            
    set(arr1(n),'Visible','on');
    set(arrr(n),'Visible','on');
    pause(1);
    set(n1(n),'Visible','on');
    set(l1(n),'Visible','on');
    set(l2(n),'Visible','on');
    pause(1);
    set(l1(n),'String','FIRST');
     set(l2(n),'String','LPTR');
     
     set(line3(n-1),'Visible','off');
set(line4(n-1),'Visible','off');
set(line5(n-1),'Visible','off');

set(line7(n-1),'Visible','off');
set(line8(n-1),'Visible','off');
set(line9(n-1),'Visible','off');

     
     
     
     
     
     set(line3(n),'Visible','on');
set(line4(n),'Visible','on');
set(line5(n),'Visible','on');

set(line7(n),'Visible','on');
set(line8(n),'Visible','on');
set(line9(n),'Visible','on');

     
     
   
    for i=n:-1:2
        set(n1(i),'String',get(n1(i-1),'String'));
        pause(2);
         set(n1(i-1),'String','');
         set(l1(i-1),'String','RPTR');
          set(l2(i-1),'String','LPTR');
    end
    pause(1);
     set(l1(1),'String','RPTR');
     set(l2(1),'String','LAST');
    
     set(n1(1),'String',ele);
    
    else
        set(line3(n-1),'Visible','off');
set(line4(n-1),'Visible','off');
set(line5(n-1),'Visible','off');

set(line7(n-1),'Visible','off');
set(line8(n-1),'Visible','off');
set(line9(n-1),'Visible','off');

set(line3(n),'Visible','on');
set(line4(n),'Visible','on');
set(line5(n),'Visible','on');

set(line7(n),'Visible','on');
set(line8(n),'Visible','on');
set(line9(n),'Visible','on');

     
     
        
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
global arr1;
global arrr;
global n1;
global l1;
global l2;
global n;
global GUI;
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;

if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    ele=get(n1(1),'String');
    set(handles.edit2,'String',ele);
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
  
    
   
    if n~=1
       set(l1(n),'String','NULL'); 
         set(line3(n-1),'Visible','on');
set(line4(n-1),'Visible','on');
set(line5(n-1),'Visible','on');

set(line7(n-1),'Visible','on');
set(line8(n-1),'Visible','on');
set(line9(n-1),'Visible','on');

    
    
set(line3(n),'Visible','off');
set(line4(n),'Visible','off');
set(line5(n),'Visible','off');

set(line7(n),'Visible','off');
set(line8(n),'Visible','off');
set(line9(n),'Visible','off');

    else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
set(line2(1),'Visible','off');

set(line3(1),'Visible','off');

set(line4(1),'Visible','off');

set(line5(1),'Visible','off');

set(line6(1),'Visible','off');

set(line7(1),'Visible','off');

set(line8(1),'Visible','off');

set(line9(1),'Visible','off');

    
    end
     n=n-1;
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
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;

if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    ele=get(n1(n),'String');
    set(handles.edit2,'String',ele);
    

    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    pause(1);
   
    if n~=1
       set(l1(n),'String','NULL'); 
         set(line3(n-1),'Visible','on');
set(line4(n-1),'Visible','on');
set(line5(n-1),'Visible','on');

set(line7(n-1),'Visible','on');
set(line8(n-1),'Visible','on');
set(line9(n-1),'Visible','on');

    
    
set(line3(n),'Visible','off');
set(line4(n),'Visible','off');
set(line5(n),'Visible','off');

set(line7(n),'Visible','off');
set(line8(n),'Visible','off');
set(line9(n),'Visible','off');

    else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
set(line2(1),'Visible','off');

set(line3(1),'Visible','off');

set(line4(1),'Visible','off');

set(line5(1),'Visible','off');

set(line6(1),'Visible','off');

set(line7(1),'Visible','off');

set(line8(1),'Visible','off');

set(line9(1),'Visible','off');

    
    end
     n=n-1;
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
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;


if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    pos=str2num(get(handles.edit2,'String'));
    if pos >n
    msgbox('Invalid POsition');
    else
    ele=get(n1(pos),'String');
    if pos==n

    pause(1);
    set(l1(n),'Visible','OFF');
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
    
    
    if n~=1
       set(l1(n),'String','NULL'); 
       set(line3(n-1),'Visible','on');
       set(line4(n-1),'Visible','on');
set(line5(n-1),'Visible','on');

set(line7(n-1),'Visible','on');
set(line8(n-1),'Visible','on');
set(line9(n-1),'Visible','on');

    
    
set(line3(n),'Visible','off');
set(line4(n),'Visible','off');
set(line5(n),'Visible','off');

set(line7(n),'Visible','off');
set(line8(n),'Visible','off');
set(line9(n),'Visible','off');
    else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
set(line2(1),'Visible','off');

set(line3(1),'Visible','off');

set(line4(1),'Visible','off');

set(line5(1),'Visible','off');

set(line6(1),'Visible','off');

set(line7(1),'Visible','off');

set(line8(1),'Visible','off');

set(line9(1),'Visible','off');
    end
    n=n-1;
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
    
    if n~=1
       set(l1(n),'String','NULL'); 
       set(l1(n),'String','NULL'); 
       set(line3(n-1),'Visible','on');
       set(line4(n-1),'Visible','on');
set(line5(n-1),'Visible','on');

set(line7(n-1),'Visible','on');
set(line8(n-1),'Visible','on');
set(line9(n-1),'Visible','on');

    
    
set(line3(n),'Visible','off');
set(line4(n),'Visible','off');
set(line5(n),'Visible','off');

set(line7(n),'Visible','off');
set(line8(n),'Visible','off');
set(line9(n),'Visible','off');
    else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
set(line2(1),'Visible','off');

set(line3(1),'Visible','off');

set(line4(1),'Visible','off');

set(line5(1),'Visible','off');

set(line6(1),'Visible','off');

set(line7(1),'Visible','off');

set(line8(1),'Visible','off');

set(line9(1),'Visible','off');
    end
    n=n-1;
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
   
    if n~=1
       set(l1(n),'String','NULL'); 
       set(line3(n-1),'Visible','on');
       set(line4(n-1),'Visible','on');
set(line5(n-1),'Visible','on');

set(line7(n-1),'Visible','on');
set(line8(n-1),'Visible','on');
set(line9(n-1),'Visible','on');

    
    
set(line3(n),'Visible','off');
set(line4(n),'Visible','off');
set(line5(n),'Visible','off');

set(line7(n),'Visible','off');
set(line8(n),'Visible','off');
set(line9(n),'Visible','off');
    else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
set(line2(1),'Visible','off');

set(line3(1),'Visible','off');

set(line4(1),'Visible','off');

set(line5(1),'Visible','off');

set(line6(1),'Visible','off');

set(line7(1),'Visible','off');

set(line8(1),'Visible','off');

set(line9(1),'Visible','off');
    end
    n=n-1;
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
global arr11;
global line1;
global line2;
global line3;
global line4;
global line5;
global line6;
global line7;
global line8;
global line9;




flag=0;

if n==0
    h= msgbox('LINKED LIST IS EMPTY');
else
    pos=str2num(get(handles.edit2,'String'));
      
    for j=1:n
         
         
         ele=str2num(get(n1(j),'String'));
         if(ele==pos)
%                  set(handles.text1,'String',ele);
         if j==n

         pause(1);
         set(l1(n),'Visible','OFF');
        set(l2(n),'Visible','OFF');
        set(n1(n),'Visible','OFF');
        set(arr1(n),'Visible','OFF');
         set(arrr(n),'Visible','OFF');
    
        if n~=1
       set(l1(n),'String','NULL'); 
       set(line3(n-1),'Visible','on');
       set(line4(n-1),'Visible','on');
        set(line5(n-1),'Visible','on');

        set(line7(n-1),'Visible','on');
        set(line8(n-1),'Visible','on');
        set(line9(n-1),'Visible','on');

    
    
        set(line3(n),'Visible','off');
        set(line4(n),'Visible','off');
        set(line5(n),'Visible','off');

        set(line7(n),'Visible','off');
        set(line8(n),'Visible','off');
        set(line9(n),'Visible','off');
        else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
        set(line2(1),'Visible','off');

        set(line3(1),'Visible','off');

        set(line4(1),'Visible','off');

        set(line5(1),'Visible','off');

        set(line6(1),'Visible','off');

         set(line7(1),'Visible','off');

        set(line8(1),'Visible','off');

        set(line9(1),'Visible','off');
    end
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
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
  
    if n~=1
       set(l1(n),'String','NULL'); 
       set(line3(n-1),'Visible','on');
       set(line4(n-1),'Visible','on');
set(line5(n-1),'Visible','on');

set(line7(n-1),'Visible','on');
set(line8(n-1),'Visible','on');
set(line9(n-1),'Visible','on');

    
    
set(line3(n),'Visible','off');
set(line4(n),'Visible','off');
set(line5(n),'Visible','off');

set(line7(n),'Visible','off');
set(line8(n),'Visible','off');
set(line9(n),'Visible','off');
    else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
set(line2(1),'Visible','off');

set(line3(1),'Visible','off');

set(line4(1),'Visible','off');

set(line5(1),'Visible','off');

set(line6(1),'Visible','off');

set(line7(1),'Visible','off');

set(line8(1),'Visible','off');

set(line9(1),'Visible','off');
    end
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
    set(l2(n),'Visible','OFF');
    set(n1(n),'Visible','OFF');
    set(arr1(n),'Visible','OFF');
    set(arrr(n),'Visible','OFF');
  
    if n~=1
       set(l1(n),'String','NULL'); 
       set(line3(n-1),'Visible','on');
       set(line4(n-1),'Visible','on');
set(line5(n-1),'Visible','on');

set(line7(n-1),'Visible','on');
set(line8(n-1),'Visible','on');
set(line9(n-1),'Visible','on');

    
    
set(line3(n),'Visible','off');
set(line4(n),'Visible','off');
set(line5(n),'Visible','off');

set(line7(n),'Visible','off');
set(line8(n),'Visible','off');
set(line9(n),'Visible','off');
    else
        set(arr11(1),'Visible','off');
        set(line1(1),'Visible','off');
set(line2(1),'Visible','off');

set(line3(1),'Visible','off');

set(line4(1),'Visible','off');

set(line5(1),'Visible','off');

set(line6(1),'Visible','off');

set(line7(1),'Visible','off');

set(line8(1),'Visible','off');

set(line9(1),'Visible','off');
    end
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
