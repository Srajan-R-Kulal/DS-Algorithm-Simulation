function varargout = Insertionsort(varargin)
% INSERTIONSORT MATLAB code for Insertionsort.fig
%      INSERTIONSORT, by itself, creates a new INSERTIONSORT or raises the existing
%      singleton*.
%
%      H = INSERTIONSORT returns the handle to a new INSERTIONSORT or the handle to
%      the existing singleton*.
%
%      INSERTIONSORT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INSERTIONSORT.M with the given input arguments.
%
%      INSERTIONSORT('Property','Value',...) creates a new INSERTIONSORT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Insertionsort_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Insertionsort_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Insertionsort

% Last Modified by GUIDE v2.5 16-Jun-2013 18:45:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Insertionsort_OpeningFcn, ...
                   'gui_OutputFcn',  @Insertionsort_OutputFcn, ...
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


% --- Executes just before Insertionsort is made visible.
function Insertionsort_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Insertionsort (see VARARGIN)
clc;

global i;
i=0;
global a;
for j=1:10
    a(j)=0;
end
% for i=1 :1:2
%     for j=1:1:10
%         s(i,j)=0;
%     end
% end

% s=struct([]);

% Choose default command line output for Insertionsort
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Insertionsort wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Insertionsort_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = uiputfile('*.txt','Save as');
fid = fopen(FileName,'wt');
fprintf(fid,'%s',get(handles.edit3,'String'))
% Data=get(handles.uitable3,'Data');
% writetable(Data,FileName);
fclose(fid);


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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = uiputfile('*.xls','Save as');
Data=get(handles.uitable2,'Data');
% % xlswrite(FileName,Data);
% ColumnName(1)='abc';
% ColumnName(2)='bcd';
% % ColumnName=get (handles.uitable1,'ColumnName');
%  xlswrite(FileName,ColumnName);
% xlswrite(FileName,Data,1,'A2');
xlswrite(FileName,Data);
h=waitbar(0,'please wait...');
steps=200;
for step=1:steps
    waitbar(step/steps)
end
close(h);


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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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
global a;
global tt;
n=str2double(get(handles.edit1,'String'));
axes(handles.axes1);

% h=msgbox('continue...');

% for i=1 : n
%     disp(a(i));
%     d(i)=a(i);
% end
bar(a);
set(gca,'XtickLabel',a);
for i=1:n
    c(1,i)=a(i);
   d(1,i)=a(i);
end
set(handles.uitable2,'data',c);
l=2;
 set(handles.edit9,'String','SORTING IS IN PROGRESS..........');
 tt=0;
 s=''; 
 flag=0;
for i=2:n
    s=strcat(s,sprintf('                    PASS:   %d      of      %d       \n',i,n));
   
    set(handles.edit3,'String',s);
    pause(2);
     set(handles.edit4,'String',num2str(i));
     key=a(i);
    j=i-1;
     set(handles.edit13,'String',key);
    while(j>=1 && a(j)>key)
         s=strcat(s,sprintf('    COMP: %d   :  %d  > %d     \n',j,a(j),key));
        set(handles.edit5,'String',num2str(j));
        set(handles.edit7,'String',a(j));
        set(handles.edit8,'String',key);
        textIn = ['COMPARE A of j is GREATER THAN KEY then CHANGE VLUE OF a of j plus 1'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);

        a(j+1)=a(j);
        j=j-1;
        tt=tt+1;
        


            tt=tt+1;
            s=strcat(s,'   TRUE   ','   CHANGE VALUE OF a(j+1)   ');
            set(handles.edit10,'String','TRUE');
            set(handles.edit11,'String','CHANGE VALUE OF a(j+1)');
            set(handles.edit13,'String',key);
            
%         else
%             
%         end
        
        pause(2);
       bar(a);
       set(gca,'XtickLabel',a);
       set(handles.edit3,'String',s);
%        
       for k=1:n
           c(l,k)= a(k);
       end
      
       l=l+1;
       set(handles.uitable2,'data',c);
        flag=1;
    end
    if(flag==0)
        s=strcat(s,'   FALSE   ','   DONT CHANGE VALUE OF SMALL ');
            set(handles.edit10,'String','FALSE');
            set(handles.edit11,'String','DONT CHANGE VALUE OF SMALL');
    end
    flag=0;
     a(j+1)=key;
         bar(a);
%      bar(a);
end
% figure;
    bar(a);

for i=1:n
    d(2,i)=a(i);
end

set(handles.uitable1,'RowName',{'BEFORE SORTING','AFTER SORTING'});
set(handles.uitable1,'data',d);
set(handles.edit9,'String','SORTING IS OVER');


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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global a;
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
    set(handles.uitable1,'RowName',{'BEFORE SORTING'});
   a(i)=f;
   
    set(handles.uitable1,'data',a);
%     set(handles.edit2,'String','');
    set(handles.edit2,'String','');
    uicontrol(handles.edit2);
end
end
if i>=n
%  set(handles.edit2,'Enable','Off');
 set(handles.edit2,'Enable','Off');
  set(handles.pushbutton2,'Visible','on');
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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global tt;
n=str2double(get(handles.edit1,'String'));
b=n;
a=(n*(n-1)/2)/2;
w=n*(n-1)/2;
set(handles.text4,'String',b);
set(handles.text5,'String',a);
set(handles.text6,'String',w);
set(handles.text7,'String',tt);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=str2double(get(handles.edit1,'String'));


sc=(n+2+2)*2;
set(handles.text9,'String',sc);



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
