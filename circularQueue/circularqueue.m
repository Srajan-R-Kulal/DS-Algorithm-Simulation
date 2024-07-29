function varargout = circularqueue(varargin)
% CIRCULARQUEUE MATLAB code for circularqueue.fig
%      CIRCULARQUEUE, by itself, creates a new CIRCULARQUEUE or raises the existing
%      singleton*.
%
%      H = CIRCULARQUEUE returns the handle to a new CIRCULARQUEUE or the handle to
%      the existing singleton*.
%
%      CIRCULARQUEUE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRCULARQUEUE.M with the given input arguments.
%
%      CIRCULARQUEUE('Property','Value',...) creates a new CIRCULARQUEUE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before circularqueue_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to circularqueue_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help circularqueue

% Last Modified by GUIDE v2.5 17-Aug-2013 06:53:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @circularqueue_OpeningFcn, ...
                   'gui_OutputFcn',  @circularqueue_OutputFcn, ...
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


% --- Executes just before circularqueue is made visible.
function circularqueue_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to circularqueue (see VARARGIN)

% Choose default command line output for circularqueue
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
a=[10,10,10,10,10];
pie(a);
global GUI;
GUI.h2(1) = uicontrol('Style', 'text','String','1','FontSize',15,'Position', [120 570, 30,30]);
GUI.h2(2) = uicontrol('Style', 'text','String','2','FontSize',15,'Position', [70 400, 30,30]);
GUI.h2(3) = uicontrol('Style', 'text','String','3','FontSize',15,'Position', [210 300, 30,30]);
GUI.h2(4) = uicontrol('Style', 'text','String','4','FontSize',15,'Position', [350 400, 30,30]);
GUI.h2(5) = uicontrol('Style', 'text','String','5','FontSize',15,'Position', [330 535, 30,30]);

GUI.h3(1) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [70 570, 30,50]);
GUI.h3(2) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [45 380, 30,50]);
GUI.h3(3) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [200 260, 30,50]); 
GUI.h3(4) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [370 400, 50,50]);
GUI.h3(5) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [300 565, 50,50]);

GUI.h4(1) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [50 570, 30,50]);
 GUI.h4(2) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [25 380, 30,50]);
GUI.h4(3) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [200 240, 30,50]); 
GUI.h4(4) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [410 400, 50,50]);
GUI.h4(5) = uicontrol('Style', 'text','String','','FontSize',15,'Position', [340 565, 50,50]);
% 







GUI.h1(1) = uicontrol('Style', 'text','BackGroundColor','b','FontSize',15,'Position', [150 500, 50,50]);
GUI.h1(2) = uicontrol('Style', 'text','BackGroundColor','g','FontSize',15,'Position', [130 400, 50,50]);
GUI.h1(3) = uicontrol('Style', 'text','BackGroundColor','g','FontSize',15,'Position', [200 350, 50,50]);
GUI.h1(4) = uicontrol('Style', 'text','BackGroundColor','b','FontSize',15,'Position', [270 400, 50,50]);
GUI.h1(5) = uicontrol('Style', 'text','BackGroundColor','r','FontSize',15,'Position', [250 500, 50,50]);



global front;
global rear;
front=0;
rear=0;
global cq;
set(handles.text3,'String','0');
set(handles.text4,'String','0');
global s;
s='';
% UIWAIT makes circularqueue wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = circularqueue_OutputFcn(hObject, eventdata, handles) 
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
global GUI;
MAX=5;
global front;
global rear;
global cq;

disp(front);
disp(rear);
global s;
ele=str2num(get(handles.edit1,'String'));


if isempty(ele) || isnan(ele)|| ~isreal(ele)
    uicontrol(handles.edit1);
    set(handles.edit1,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
    textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);


else

s=strcat(s,sprintf('                    CHECK OF CIRCULAR QUEUE IS FULL  BY COMAPRE FRONT WITH MAX    \n'));
    set(handles.edit2,'String',s);
	if front==(rem((rear+1),MAX)) || front==rear+1
     s=strcat(s,sprintf('                   TRUE : Circular Quesue full \n'));
    set(handles.edit2,'String',s);

		h=msgbox('Circular Quesue full');
	
    else
     
		if(rear==4)
		rear=rem((rear+1),MAX+1);
        else
         rear=rem((rear+1),MAX);
        end
        s=strcat(s,sprintf('    INSER THE ELEMENT %d  at    REAR   %d \n',ele,rear));
        set(handles.edit2,'String',s);
		cq(rear)=ele;
        set(GUI.h1(rear),'String',num2str(ele));
        if(rear ~= 1)
        set(GUI.h3(rear-1),'String','');
        end
        set(GUI.h3(rear),'String','R');
        
        set(handles.text4,'String',num2str(rear));
    end
    
	if(front==0)
        
		front=1;
        s=strcat(s,sprintf('    SET   FRONT=  %d \n',front));
        set(handles.edit2,'String',s);
        set(GUI.h4(front),'String','F');
        set(handles.text3,'String',num2str(front));
    end
end




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)|| g<=0
uicontrol(handles.edit1);
set(handles.edit1,'String','');
h=msgbox('Enter a valid input','ERROR','error');
textIn = ['INVALID INPUT'];
    ha = actxserver('SAPI.SpVoice');
    invoke(ha,'speak',textIn);
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GUI;
MAX=5;
global front;
global rear;
global cq;
global s;
s=strcat(s,sprintf('                    CHECK OF CIRCULAR QUEUE IS EMPTY  BY COMAPRE REAR WITH 0    \n'));
    set(handles.edit2,'String',s);
if(front==0)
    s=strcat(s,sprintf('                    TRUE: CIRCULAR QUESUE IS EMPTY   \n'));
    set(handles.edit2,'String',s);
	h=msgbox('CQ is empty');
else
    
        set(GUI.h4(front),'String','');
        set(GUI.h1(front),'String','');
        ele=cq(front);
        set(handles.text5,'String',num2str(ele));
		
         s=strcat(s,sprintf('                    DELETE ELEMENT %d    at    FRONT    %d     \n',ele,front));
         set(handles.edit2,'String',s);
		if(front==rear)
            set(GUI.h4(front),'String','');
            set(GUI.h3(rear),'String','');
			front=0;
			rear=0;
         s=strcat(s,sprintf('                    BOTH FRONT AND REAR ARE   SAME THEN SET  FRONT=0  and   REAR=)     \n'));
         set(handles.edit2,'String',s);
		 set(handles.text4,'String',num2str(rear));
         set(handles.text3,'String',num2str(front));
        elseif(front ==5)
			front=rem((front+1),MAX);
            set(handles.text3,'String',num2str(front));
            set(GUI.h4(front),'String','F');
        else
            front=rem((front+1),MAX+1);
            set(handles.text3,'String',num2str(front));
            set(GUI.h4(front),'String','F');
        end
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = uiputfile('*.txt','Save as');
fid = fopen(FileName,'wt');
fprintf(fid,'%s',get(handles.edit2,'String'))
% Data=get(handles.uitable3,'Data');
% writetable(Data,FileName);
fclose(fid);
h=waitbar(0,'please wait...');
steps=200;
for step=1:steps
    waitbar(step/steps)
end
close(h);
