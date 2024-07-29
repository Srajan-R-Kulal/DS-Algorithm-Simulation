function varargout = diva(varargin)
% DIVA MATLAB code for diva.fig
%      DIVA, by itself, creates a new DIVA or raises the existing
%      singleton*.
%
%      H = DIVA returns the handle to a new DIVA or the handle to
%      the existing singleton*.
%
%      DIVA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIVA.M with the given input arguments.
%
%      DIVA('Property','Value',...) creates a new DIVA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before diva_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to diva_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help diva

% Last Modified by GUIDE v2.5 06-Jun-2013 15:39:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @diva_OpeningFcn, ...
                   'gui_OutputFcn',  @diva_OutputFcn, ...
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


% --- Executes just before diva is made visible.
function diva_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to diva (see VARARGIN)

% Choose default command line output for diva
handles.output = hObject;
global L;
global L11 L21 L22 L31 L32 L33 L34 L41 L42 L43 L44 L45 L46 L47 L48;
L11=0;L21=0;L22=0;L31=0;L32=0;L33=0;L34=0;L41=0;L42=0;L43=0;L44=0;L45=0;L46=0;L47=0;L48=0; 
for z=1:15
    L(z)=0;
end    
global z1;
z1(1)=handles.text1;
z1(2)=handles.text2;
z1(3)=handles.text3;
z1(4)=handles.text4;
z1(5)=handles.text5;
z1(6)=handles.text6;
z1(7)=handles.text7;
z1(8)=handles.text8;
z1(9)=handles.text9;
z1(10)=handles.text10;
z1(11)=handles.text11;
z1(12)=handles.text12;
z1(13)=handles.text13;
z1(14)=handles.text14;
z1(15)=handles.text15;
global full;
full=0;
global el;
global ar;
global a a1 a2;
global b b1 b2;
global c c1 c2;
global d d1 d2;
global e e1 e2;
global f f1 f2;
global g g1 g2 s;
global h i j k l m n o;
            a=annotation('ellipse',[0.5 0.80  0.08 0.08],'Visible','off');
            el(1)=a;
                X = [0.51 0.45];   % adjust length and location of arrow 
                Y= [0.815 0.73]; 
                a1=annotation('arrow',X,Y,'Linewidth',2,'Visible','off');
                ar(1)=a1;
                X1 = [0.57 0.63];   % adjust length and location of arrow 
                Y1= [0.815 0.73]; 
                a2=annotation('arrow',X1,Y1,'Linewidth',2,'Visible','off');
                ar(2)=a2;
            b=annotation('ellipse',[0.4 0.65 0.08 0.08],'Visible','off');
            el(2)=b;
                X2 = [0.406 0.34];   % adjust length and location of arrow 
                Y2= [0.667 0.579]; 
                b1=annotation('arrow',X2,Y2,'Linewidth',2,'Visible','off');
                ar(3)=b1;
                X4 = [0.455 0.47];   % adjust length and location of arrow 
                Y4= [0.654 0.58]; 
                b2=annotation('arrow',X4,Y4,'Linewidth',2,'Visible','off');
                ar(4)=b2;
            c=annotation('ellipse',[0.6 0.65 0.08 0.08],'Visible','off');
            el(3)=c;
                X5 = [0.63 0.61];   % adjust length and location of arrow 
                Y5= [0.65 0.58]; 
                c1=annotation('arrow',X5,Y5,'Linewidth',2,'Visible','off');
                ar(5)=c1;
                X3 = [0.673 0.73];   % adjust length and location of arrow 
                Y3= [0.664 0.579]; 
                c2=annotation('arrow',X3,Y3,'Linewidth',2,'Visible','off');
                ar(6)=c2;
            d=annotation('ellipse',[0.3 0.50  0.08 0.08],'Visible','off');
            el(4)=d;
                X6 = [0.31 0.235];   % adjust length and location of arrow 
                Y6= [0.514 0.403]; 
                d1=annotation('arrow',X6,Y6,'Linewidth',2,'Visible','off');
                ar(7)=d1;
                X7 = [0.35 0.367];   % adjust length and location of arrow 
                Y7= [0.502 0.401]; 
                d2=annotation('arrow',X7,Y7,'Linewidth',2,'Visible','off');
                ar(8)=d2;
            e=annotation('ellipse',[0.43 0.50  0.08 0.08],'Visible','off');
            el(5)=e;
                X8 = [0.46 0.43];   % adjust length and location of arrow 
                Y8= [0.502 0.403]; 
                e1=annotation('arrow',X8,Y8,'Linewidth',2,'Visible','off');
                ar(9)=e1;
                X9 = [0.48 0.515];   % adjust length and location of arrow 
                Y9= [0.502 0.403]; 
                e2=annotation('arrow',X9,Y9,'Linewidth',2,'Visible','off');
                ar(10)=e2;
            f=annotation('ellipse',[0.57 0.50  0.08 0.08],'Visible','off');
            el(6)=f;
                X10 = [0.6 0.58];   % adjust length and location of arrow 
                Y10= [0.502 0.40]; 
                f1=annotation('arrow',X10,Y10,'Linewidth',2,'Visible','off');
                ar(11)=f1;
                X11= [0.625 0.66];   % adjust length and location of arrow 
                Y11= [0.503 0.402]; 
                f2=annotation('arrow',X11,Y11,'Linewidth',2,'Visible','off');
                ar(12)=f2;
            g=annotation('ellipse',[0.7 0.50  0.08 0.08],'Visible','off');
            el(7)=g;
                X12 = [0.734 0.72];   % adjust length and location of arrow 
                Y12= [0.502 0.40]; 
                g1=annotation('arrow',X12,Y12,'Linewidth',2,'Visible','off');
                ar(13)=g1;
                X13= [0.762 0.83];   % adjust length and location of arrow 
                Y13= [0.505 0.401]; 
                g2=annotation('arrow',X13,Y13,'Linewidth',2,'Visible','off');
                ar(14)=g2;
            h=annotation('ellipse',[0.2 0.33 0.072 0.072],'Visible','off');
            el(8)=h;
            i=annotation('ellipse',[0.32 0.33 0.072 0.072],'Visible','off');
            el(9)=i;
            j=annotation('ellipse',[0.40 0.33 0.072 0.072],'Visible','off');
            el(10)=j;
            k=annotation('ellipse',[0.475 0.33 0.072 0.072],'Visible','off');
            el(11)=k;
            l=annotation('ellipse',[0.55 0.33 0.072 0.072],'Visible','off');
            el(12)=l;
            m=annotation('ellipse',[0.625 0.33 0.072 0.072],'Visible','off');
            el(13)=m;
            n=annotation('ellipse',[0.70 0.33 0.072 0.072],'Visible','off');
            el(14)=n;
            o=annotation('ellipse',[0.8 0.33 0.072 0.072],'Visible','off');
            el(15)=o;
s=1;
%Update handles structure                
guidata(hObject, handles);

% UIWAIT makes diva wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = diva_OutputFcn(hObject, eventdata, handles) 
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



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a a1 a2;
global b b1 b2;
global c c1 c2;
global d d1 d2;
global e e1 e2;
global f f1 f2;
global g g1 g2;
global s p q;
global h i j k l m n o;
global full z1;
global L11 L21 L22 L31 L32 L33 L34 L41 L42 L43 L44 L45 L46 L47 L48;
global L;
global el;
global ar;
global y1 y2 y3 y4 y5 y6 y7;
   p=str2double(get(handles.edit1,'String'));
if full==1
    x=msgbox('TREE IS FULL');
else
   if(isempty(p)|| isnan(p)|| ~real(p))
         f=msgbox('Please enter the number','ERROR','error');
         set(handles.edit1,'String',' ');
   else
        if s==1
            set(a,'Visible','On');
            q=p;
            set(handles.text1,'String',num2str(q));
            L(1)=q;
            L11=1;
            s=s+1;
        else
            L(1)=str2double(get(z1(1),'String'));
            if p>=L(1)
                t=get(handles.text3,'String');
                if t==' ' 
                    set(a2,'Visible','on');
                    pause(1);
                    set(c,'Visible','on');
                    set(handles.text3,'String',num2str(p));
                    L22=1;
                    L(3)=p;
                else
                    r=str2double(t);
                    u=get(handles.text7,'String');
                    if p>=r
                        if u==' '
                            set(c2,'Visible','on');
                            pause(1);
                            set(g,'Visible','on');
                            set(handles.text7,'String',num2str(p));
                            L(7)=p;
                            L34=1;
                        else
                            u=str2double(u);
                            if p>=u
                               v=get(handles.text15,'String');
                               if v==' '
                               set(g2,'Visible','on');
                               pause(1);
                               set(o,'Visible','on');
                               set(handles.text15,'String',num2str(p));
                               L(15)=p;
                               L48=1;
                               else
                                   x=msgbox('Node Is Already Full');
                               end
                            else
                                v=get(handles.text14,'String');
                                if v==' '
                                set(g1,'Visible','on');
                                pause(1);
                                set(n,'Visible','on');
                                set(handles.text14,'String',num2str(p));
                                L(14)=p;
                                L47=1;
                                else
                                   x=msgbox('Node Is Already Full');
                                end
                            end
                        end
                    else
                        v=get(handles.text6,'String');
                        if v==' '
                            set(c1,'Visible','on');
                            pause(1);
                            set(f,'Visible','on');
                            set(handles.text6,'String',num2str(p));
                            L(6)=p;
                            L33=1;
                        else
                            v=str2double(v);
                            if p>=v
                                u=get(handles.text13,'String');
                                if u==' '
                               set(f2,'Visible','on');
                               pause(1);
                               set(m,'Visible','on');
                               set(handles.text13,'String',num2str(p));
                               L(13)=p;
                               L46=1;
                               else
                                   x=msgbox('Node Is Already Full');
                                end
                            else
                                u=get(handles.text12,'String');
                                if u==' '
                                set(f1,'Visible','on');
                                pause(1);
                                set(l,'Visible','on');
                                set(handles.text12,'String',num2str(p));
                                L(12)=p;
                                L45=1;
                                else
                                   x=msgbox('Node Is Already Full');
                                end
                            end
                        end
                    end
                end
            else
                t=get(handles.text2,'String');
                if t==' '
                    set(a1,'Visible','on');
                    pause(1);
                    set(b,'Visible','on');
                    set(handles.text2,'String',num2str(p));
                    L(2)=p;
                    L21=1;
                else
                    r=str2double(t);
                    if p>=r
                        u=get(handles.text5,'String');
                        if u==' '
                            set(b2,'Visible','on');
                            pause(1);
                            set(e,'Visible','on');
                            set(handles.text5,'String',num2str(p));
                            L(5)=p;
                            L32=1;
                        else
                            u=str2double(u);
                            if p>=u
                               v=get(handles.text11,'String');
                               if v==' '
                               set(e2,'Visible','on');
                               pause(1);
                               set(k,'Visible','on');
                               set(handles.text11,'String',num2str(p));
                               L(11)=p;
                               L44=1;
                               else
                                   x=msgbox('Node Is Already Full');
                               end
                            else
                                v=get(handles.text10,'String');
                               if v==' '
                                set(e1,'Visible','on');
                                pause(1);
                                set(j,'Visible','on');
                                set(handles.text10,'String',num2str(p));
                                L(10)=p;
                                L43=1;
                               else
                                   x=msgbox('Node Is Already Full');
                               end
                            end
                        end
                    else
                        v=get(handles.text4,'String');
                        if v==' '
                            set(b1,'Visible','on');
                            pause(1);
                            set(d,'Visible','on');
                            set(handles.text4,'String',num2str(p));
                            L(4)=p;
                            L31=1;
                        else
                            v=str2double(v);
                            if p>=v
                                u=get(handles.text9,'String');
                               if u==' '
                               set(d2,'Visible','on');
                               pause(1);
                               set(i,'Visible','on');
                               set(handles.text9,'String',num2str(p));
                               L(9)=p;
                               L42=1;
                               else
                                   x=msgbox('Node Is Already Full');
                               end
                            else
                                u=get(handles.text8,'String');
                               if u==' '
                                set(d1,'Visible','on');
                                pause(1);
                                set(h,'Visible','on');
                                set(handles.text8,'String',num2str(p));
                                L(8)=p;
                                L41=1;
                               else
                                   x=msgbox('Node Is Already Full');
                               end
                            end
                        end
                    end
                end
            end
        
        end
   end
end
       y1=str2double(get(handles.text8,'String'));
       y2=str2double(get(handles.text9,'String'));
       y3=str2double(get(handles.text10,'String'));
       y4=str2double(get(handles.text11,'String'));
       y5=str2double(get(handles.text12,'String'));
       y6=str2double(get(handles.text13,'String'));
       y7=str2double(get(handles.text14,'String'));
       y8=str2double(get(handles.text15,'String'));
   if(isnumeric(y1) && isnumeric(y2) && isnumeric(y3) && isnumeric(y4) && isnumeric(y5) && isnumeric(y6) && isnumeric(y7) && isnumeric(y8))
       if(y1>0 && y2>0 && y3>0&& y4>0&& y5>0&& y6>0&& y7>0&& y8>0)
           full=1;
       end
   end
  set(handles.edit1,'String',' ');     


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


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global L;
global L1;
string str;
str='';
L1=sort(L);
set(handles.edit2,'String',' ');
for z=1:15
    if L1(z)~=0
        if z==15
            str1=num2str(L1(z));
            str=strcat(str, str1);
            continue;
        end
        str1=strcat(num2str(L1(z)),sprintf(' , '));
        str=strcat(str, str1);
    end
end
% k=size(str);
% if strcmp(',',str(k))
%     strrep(str,',',' ');
% end
 set(handles.edit2,'String',str);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global L;
str=' ';
pre(1)=L(1);pre(2)=L(2);pre(3)=L(4);pre(4)=L(8);pre(5)=L(9);pre(6)=L(5);pre(7)=L(10);pre(8)=L(11);pre(9)=L(3);pre(10)=L(6);pre(11)=L(12);pre(12)=L(13);pre(13)=L(7);pre(14)=L(14);pre(15)=L(15);
for i=1:15
    if pre(i)>0
        if str==' '
            str1=num2str(pre(i));
            str=strcat(str,str1);
            continue;
        end
        str1=strcat(sprintf(' , '),num2str(pre(i)));
        str=strcat(str,str1);
    end
end
set(handles.edit2,'String',str);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global L;
str=' ';
post(1)=L(8);post(2)=L(9);post(3)=L(4);post(4)=L(10);post(5)=L(11);post(6)=L(5);post(7)=L(2);post(8)=L(12);post(9)=L(13);post(10)=L(6);post(11)=L(14);post(12)=L(15);post(13)=L(7);post(14)=L(3);post(15)=L(1);
for i=1:15
    if post(i)>0
        if str==' '
            str1=num2str(post(i));
            str=strcat(str,str1);
            continue;
        end
        str1=strcat(sprintf(' , '),num2str(post(i)));
        str=strcat(str,str1);
    end
end
set(handles.edit2,'String',str);


% --- Executes on button press in pushbutton9.
% function pushbutton9_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton9 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% global z1;
% global ar el;
% global L11 L21 L22 L31 L32 L33 L34 L41 L42 L43 L44 L45 L46 L47 L48;
% ele=str2double(get(handles.edit1,'String'));
% global L L1;
% L1=sort(L);
% flag=0;
% for i=1:15
%     if ele==L(i);
%         flag=1;
%     end
% end
% if flag==0
%     h=msgbox('Element does not exists');
% end
% % ele=str2double(get(handles.edit1,'String'));
% if((ele==L(2) && L31==0 && L32==1) || (ele==L(2) && L31==1 && L32==0))
%     if (L31==1 && L41==0 && L42==0)
%         set(z1(2),'String',' ');
%         rep=get(z1(4),'String');
%         set(z1(4),'String',' ');
%         L(4)=0;
%         L31=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%         set(el(4),'Visible','off');
%         pause(1);
%         set(ar(3),'Visible','off');
%     elseif (L31==1 && L41==1 && L42==0)
%         set(z1(2),'String',' ');
%         rep=get(z1(4),'String');
%         set(z1(4),'String',' ');
%          rep1=get(z1(8),'String');
%         set(z1(8),'String',' ');
%         L(8)=0;
%         L41=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%        
%         set(z1(4),'String',rep1);
%         L(4)=str2double(rep1);
%         
%          set(el(8),'Visible','off');
%         pause(1);
%         set(ar(7),'Visible','off');
%     elseif (L31==1 && L41==0 && L42==1)
%         set(z1(2),'String',' ');
%         rep=get(z1(9),'String');
%         set(z1(9),'String',' ');
%         L(9)=0;
%         L42=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%          set(el(9),'Visible','off');
%         pause(1);
%         set(ar(8),'Visible','off');
%     elseif (L31==1 && L41==1 && L42==1)
%         set(z1(2),'String',' ');
%         rep=get(z1(9),'String');
%         set(z1(9),'String',' ');
%         L(9)=0;
%         L42=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%          set(el(9),'Visible','off');
%         pause(1);
%         set(ar(8),'Visible','off');
%     end
%     if (L32==1 && L43==0 && L44==0)
%         set(z1(2),'String',' ');
%         rep=get(z1(5),'String');
%         set(z1(5),'String',' ');
%         L(5)=0;
%         L32=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%         set(el(5),'Visible','off');
%         pause(1);
%         set(ar(4),'Visible','off');
%     elseif (L32==1 && L43==1 && L44==0)
%         set(z1(2),'String',' ');
%         rep=get(z1(10),'String');
%         set(z1(10),'String',' ');
%         L(10)=0;
%         L43=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%          set(el(10),'Visible','off');
%         pause(1);
%         set(ar(9),'Visible','off');
%     elseif (L32==1 && L43==0 && L44==1)
%         set(z1(2),'String',' ');
%         rep=get(z1(5),'String');
%         set(z1(5),'String',' ');
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%         rep1=get(z1(11),'String');
%         set(z1(11),'String',' ');
%         set(z1(5),'String',rep1);
%         L(5)=str2double(rep1);
%         L(11)=0;
%         L44=0;
%         
%          set(el(11),'Visible','off');
%         pause(1);
%         set(ar(10),'Visible','off');
%     elseif (L32==1 && L43==1 && L44==1)
%         set(z1(2),'String',' ');
%         rep=get(z1(10),'String');
%         L(10)=0;
%         L43=0;
%         set(z1(10),'String',' ');
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%          set(el(10),'Visible','off');
%         pause(1);
%         set(ar(9),'Visible','off');
%     end
% elseif(ele==L(2) && L31==0 && L32==0)
%     set(z1(2),'String',' ');
%     L(2)=0;
%     L21=0;
%     set(el(2),'Visible','off');
%     pause(1);
%     set(ar(1),'Visible','off');
% elseif (ele==L(2) && L31==1 && L32==1)
%     if (L32==1 && L43==0 && L44==0)
%         set(z1(2),'String',' ');
%         rep=get(z1(5),'String');
%         set(z1(5),'String',' ');
%         L(5)=0;
%         L32=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%         set(el(5),'Visible','off');
%         pause(1);
%         set(ar(4),'Visible','off');
%     elseif (L32==1 && L43==1 && L44==0)
%         set(z1(2),'String',' ');
%         rep=get(z1(10),'String');
%         set(z1(10),'String',' ');
%         L(10)=0;
%         L43=0;
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%          set(el(10),'Visible','off');
%         pause(1);
%         set(ar(9),'Visible','off');
%     elseif (L32==1 && L43==0 && L44==1)
%         set(z1(2),'String',' ');
%         rep=get(z1(5),'String');
%         set(z1(5),'String',' ');
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%         rep1=get(z1(11),'String');
%         set(z1(11),'String',' ');
%         set(z1(5),'String',rep1);
%         L(5)=str2double(rep1);
%         L(11)=0;
%         L44=0;
%         
%          set(el(11),'Visible','off');
%         pause(1);
%         set(ar(10),'Visible','off');
%     elseif (L32==1 && L43==1 && L44==1)
%         set(z1(2),'String',' ');
%         rep=get(z1(10),'String');
%         L(10)=0;
%         L43=0;
%         set(z1(10),'String',' ');
%         set(z1(2),'String',rep);
%         L(2)=str2double(rep);
%          set(el(10),'Visible','off');
%         pause(1);
%         set(ar(9),'Visible','off');
%     end
% end
% if((ele==L(3) && L33==1 && L34==0) || (ele==L(3) && L33==0 && L34==1))
%     if(L33==1 && L45==0 && L46==0)
%         set(z1(3),'String',' ');
%         rep=get(z1(6),'String');
%         set(z1(6),'String',' ');
%         L(6)=0;
%         L33=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%         set(el(6),'Visible','off');
%         pause(1);
%         set(ar(5),'Visible','off');
%     elseif(L33==1 && L45==1 && L46==0)
%         set(z1(3),'String',' ');
%         rep=get(z1(6),'String');
%         set(z1(6),'String',' ');
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%         rep1=get(z1(12),'String');
%         set(z1(12),'String',' ');
%         L(12)=0;
%         L45=0;
%         set(z1(6),'String',rep1);
%         L(6)=str2double(rep1);
%          set(el(12),'Visible','off');
%         pause(1);
%         set(ar(11),'Visible','off');
%     elseif(L33==1 && L45==0 && L46==1)
%         set(z1(3),'String',' ');
%         rep=get(z1(13),'String');
%         set(z1(13),'String',' ');
%         L(13)=0;
%         L46=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%          set(el(13),'Visible','off');
%         pause(1);
%         set(ar(12),'Visible','off');
%     elseif(L33==1 && L45==1 && L46==1)
%         set(z1(3),'String',' ');
%         rep=get(z1(13),'String');
%         set(z1(13),'String',' ');
%         L(13)=0;
%         L46=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%          set(el(13),'Visible','off');
%         pause(1);
%         set(ar(12),'Visible','off');
%     end
%     if(L34==1 && L47==0 && L48==0)
%         set(z1(3),'String',' ');
%         rep=get(z1(7),'String');
%         set(z1(7),'String',' ');
%         L(7)=0;
%         L34=0;
%         set(z1(3),'String',rep);
%         L(3)=srt2double(rep);
%         set(el(7),'Visible','off');
%         pause(1);
%         set(ar(6),'Visible','off');
%     elseif(L34==1 && L47==1 && L48==0)
%         set(z1(3),'String',' ');
%         rep=get(z1(14),'String');
%         set(z1(14),'String',' ');
%         L(14)=0;
%         L47=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%          set(el(14),'Visible','off');
%         pause(1);
%         set(ar(13),'Visible','off');
%     elseif(L34==1 && L47==0 && L48==1)
%         set(z1(3),'String',' ');
%         rep=get(z1(7),'String');
%         set(z1(7),'String',' ');
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%         rep1=get(z1(15),'String');
%         set(z1(7),'String',rep1);
%         L(7)=str2double(rep1);
%         set(z1(15),'String',' ');
%         L(15)=0;
%         L48=0;
%          set(el(15),'Visible','off');
%         pause(1);
%         set(ar(14),'Visible','off');
%     elseif(L34==1 && L47==1 && L48==1)
%         set(z1(3),'String',' ');
%         rep=get(z1(14),'String');
%         set(z1(14),'String',' ');
%         L(14)=0;
%         L47=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%          set(el(14),'Visible','off');
%         pause(1);
%         set(ar(13),'Visible','off');
%     end
% elseif(ele==L(3) && L33==0 && L34==0)
%     set(z1(3),'String',' ');
%     L(3)=0;
%     L22=0;
%     set(el(3),'Visible','off');
%     pause(1);
%     set(ar(2),'Visible','off');
% elseif(ele==L(3) && L33==1 && L34==1)
%     if (L34==1 && L47==0 && L48==0)
%         set(z1(3),'String',' ');
%         rep=get(z1(7),'String');
%         set(z1(7),'String',' ');
%         L(7)=0;
%         L34=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%         set(el(7),'Visible','off');
%         pause(1);
%         set(ar(6),'Visible','off');
%     elseif(L34==1 && L47==1 && L48==0)
%         set(z1(3),'String',' ');
%         rep=get(z1(14),'String');
%         set(z1(14),'String',' ');
%         L(14)=0;
%         L47=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%          set(el(14),'Visible','off');
%         pause(1);
%         set(ar(13),'Visible','off');
%     elseif(L34==1 && L47==0 && L48==1)
%         set(z1(3),'String',' ');
%         rep=get(z1(7),'String');
%         set(z1(7),'String',' ');
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%         rep1=get(z1(15),'String');
%         set(z1(7),'String',rep1);
%         L(7)=str2double(rep1);
%         set(z1(15),'String',' ');
%         L(15)=0;
%         L48=0;
%          set(el(15),'Visible','off');
%         pause(1);
%         set(ar(14),'Visible','off');
%     elseif(L34==1 && L47==1 && L48==1)
%         set(z1(3),'String',' ');
%         rep=get(z1(14),'String');
%         set(z1(14),'String',' ');
%         L(14)=0;
%         L47=0;
%         set(z1(3),'String',rep);
%         L(3)=str2double(rep);
%          set(el(14),'Visible','off');
%         pause(1);
%         set(ar(13),'Visible','off');
%     end
% end
% if((ele==L(1) && L21==1 && L22==0) || (ele==L(1) && L21==0 && L22==1))
%     if (L21==1 && L31==0 && L32==0)
%         set(z1(1),'String',' ');
%         rep=get(z1(2),'String');
%         set(z1(1),'String',rep);
%         L(1)=str2double(rep);
%         set(z1(2),'String',' ');
%         L(2)=0;
%         L21=0;
%         set(el(2),'Visible','off');
%         set(ar(1),'Visible','off');
%     elseif(L21==1 && L31==1 && L32==0)
%         if (L41==1 && L42==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(2),'String');
%             set(z1(2),'String',' ');
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             rep1=get(z1(9),'String');
%             set(z1(2),'String',rep1);
%             L(2)=str2double(rep1);
%             L(9)=0;
%             L42=0;
%             set(z1(9),'String',' ');
%             set(el(9),'Visible','off');
%             set(ar(8),'Visible','off');
%         elseif(L41==1 && L42==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(2),'String');
%             set(z1(2),'String',' ');
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             rep1=get(z1(4),'String');
%             set(z1(4),'String',' ');
%             set(z1(2),'String',rep1);
%             L(2)=str2double(rep1);
%             rep2=get(z1(8),'String');
%             set(z1(8),'String',' ');
%             set(z1(4),'String',rep2);
%             L(4)=str2double(rep2);
%             L(8)=0;
%            L41=0;
%             set(el(8),'Visible','off');
%             pause(1);
%             set(ar(7),'Visible','off');
%         elseif(L41==0 && L42==1)
%              
%             set(z1(1),'String',' ');
%             rep=get(z1(2),'String');
%             set(z1(2),'String',' ');
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             rep1=get(z1(9),'String');
%             set(z1(9),'String',' ');
%             set(z1(2),'String',rep1);
%             L(2)=str2double(rep1);
%             L(9)=0;
%             L42=0;
%             set(el(9),'Visible','off');
%             pause(1);
%             set(ar(8),'Visible','off');
%         elseif(L41==0 && L42==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(2),'String');
%             set(z1(2),'String',' ');
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             rep1=get(z1(4),'String');
%             set(z1(4),'String',' ');
%             set(z1(2),'String',rep1);
%             L(2)=str2double(rep1);
%             L(4)=0;
%             L31=0;
%             set(el(4),'Visible','off');
%             pause(1);
%             set(ar(3),'Visible','off');
%         end
%     elseif(L21==1 && L31==0 && L32==1) 
%          if (L43==1 && L44==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(11),'String');
%             set(z1(11),'String',' ');
%             L(11)=0;
%             L44=0;
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             set(el(11),'Visible','off');
%             pause(1);
%             set(ar(10),'Visible','off');
%         elseif(L43==1 && L44==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(5),'String');
%             set(z1(5),'String',' ');
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             rep1=get(z1(10),'String');
%             set(z1(10),'String',' ');
%             set(z1(5),'String',rep1);
%             L(5)=str2double(rep1);
%             L(10)=0;
%            L43=0;
%             set(el(10),'Visible','off');
%             pause(1);
%             set(ar(9),'Visible','off');
%         elseif(L43==0 && L44==1)
%              
%             set(z1(1),'String',' ');
%             rep=get(z1(11),'String');
%             set(z1(11),'String',' ');
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             L(11)=0;
%             L44=0;
%             set(el(11),'Visible','off');
%             pause(1);
%             set(ar(10),'Visible','off');
%         elseif(L43==0 && L44==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(5),'String');
%             set(z1(5),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%              L(5)=0;
%              L32=0;
%             set(el(5),'Visible','off');
%             pause(1);
%             set(ar(4),'Visible','off');
%          end
%     elseif(L21==1 && L31==1 && L32==1)  
%         for i=1:15
%             if ele==L1(i)
%             rep=L1(i-1);
%             end
%         end
%         for i=1:15
%         if L(i)==ele
%             set(z1(i),'String',' ');
%             pause(1);
%         
%        % if(x==z1(8) || x==z1(9) || x==z1(10)|| x==z(11)|| x==z1(12)|| x==z1(13)|| x==z1(14)|| x==z1(15))
%             
%             for j=1:15
%                 if L(j)==rep
%                 set(z1(j),'String',' ');
%                 set(z1(i),'String',num2str(rep));
%                 L(i)=rep;
%                 L(j)=0;
%                 if j==4
%                    L31=0;
%                 elseif j==5
%                     L32=0;
%                 elseif j==8
%                     L41=0;
%                 elseif j==9
%                     L42=0;
%                 elseif j==10
%                     L43=0;
%                 elseif j==11
%                     L44=0;
%                 end
%                 set(el(j),'Visible','off');
%                 pause(1);
%                 set(ar(j-1),'Visible','off');
%                 end
%             end   
%         end
%         end
%     end
%     if (L22==1 && L33==0 && L34==0)
%         set(z1(1),'String',' ');
%         rep=get(z1(3),'String');
%         set(z1(1),'String',rep);
%          L(1)=str2double(rep);
%         set(z1(3),'String',' ');
%         L(3)=0;
%         L22=0;
%         set(el(3),'Visible','off');
%         pause(1);
%         set(ar(2),'Visible','off');
%     elseif(L22==1 && L33==1 && L34==0) 
%         if (L45==1 && L46==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(12),'String');
%             set(z1(12),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%              L(12)=0;
%              L45=0;
%             set(el(12),'Visible','off');
%             pause(1);
%             set(ar(11),'Visible','off');
%         elseif(L45==1 && L46==0)
%               set(z1(1),'String',' ');
%             rep=get(z1(12),'String');
%             set(z1(12),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%              L(12)=0;
%              L45=0;
%             set(el(12),'Visible','off');
%             pause(1);
%             set(ar(11),'Visible','off');
%         elseif(L45==0 && L46==1)
%              
%             set(z1(1),'String',' ');
%             rep=get(z1(6),'String');
%             set(z1(6),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(13),'String');
%             set(z1(13),'String',' ');
%             set(z1(6),'String',rep1);
%              L(6)=str2double(rep1);
%              L(13)=0;
%              L46=0;
%             set(el(13),'Visible','off');
%             pause(1);
%             set(ar(12),'Visible','off');
%         elseif(L45==0 && L46==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(6),'String');
%             set(z1(6),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%              L(6)=0;
%              L33=0;
%             set(el(6),'Visible','off');
%             pause(1);
%             set(ar(5),'Visible','off');
%         end
%     elseif(L22==1 && L33==0 && L34==1) 
%         if (L47==1 && L48==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(7),'String');
%             set(z1(7),'String',' ');
%             set(z1(3),'String',rep1);
%              L(3)=str2double(rep1);
%             
%             rep2=get(z1(15),'String');
%             set(z1(15),'String',' ');
%             set(z1(7),'String',rep2);
%              L(7)=str2double(rep2);
%             set(el(15),'Visible','off');
%             pause(1);
%             set(ar(14),'Visible','off');
%             rep3=get(z1(14),'String');
%             set(z1(14),'String',' ');
%             set(ar(5),'Visible','on');
%             pause(1);
%             set(el(6),'Visible','on');
%             set(z1(6),'String',rep3);
%              L(6)=str2double(rep3);
%              L(14)=0;
%              L47=0;
%             set(el(14),'Visible','off');
%             pause(1);
%             set(ar(13),'Visible','off');
%             
%             
%         elseif(L47==1 && L48==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep2=get(z1(7),'String');
%             set(z1(7),'String',' ');
%               set(z1(3),'String',rep2);
%             rep1=get(z1(14),'String');
%             set(z1(14),'String',' ');
%             set(ar(5),'Visible','on');
%             pause(1);
%             set(el(6),'Visible','on');
%             set(z1(6),'String',rep1);
%             L(6)=str2double(rep1);
%             L(3)=str2double(rep2);
%             
%             L(14)=0;
%             L47=0;
%             set(el(14),'Visible','off');
%             pause(1);
%             set(ar(13),'Visible','off');
%         elseif(L47==0 && L48==1)
%              
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(7),'String');
%             set(z1(7),'String',' ');
%          
%             set(z1(3),'String',rep1);
%              L(3)=str2double(rep1);
%             rep2=get(z1(15),'String');
%             set(z1(15),'String',' ');
%             set(z1(7),'String',rep2);
%              L(7)=str2double(rep2);
%              L(15)=0;
%              L48=0;
%             set(el(15),'Visible','off');
%             pause(1);
%             set(ar(14),'Visible','off');
%         elseif(L47==0 && L48==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(7),'String');
%             set(z1(7),'String',' ');
%             set(z1(3),'String',rep1);
%             L(3)=str2double(rep1);
%             L(7)=0;
%             L34=0;
%             set(el(7),'Visible','off');
%             pause(1);
%             set(ar(6),'Visible','off');
%         end 
%     elseif(L22==1 && L33==1 && L34==1)  
%         if (L45==1 && L46==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(12),'String');
%             set(z1(12),'String',' ');
%             L45=0;
%             L(12)=0;
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             set(el(12),'Visible','off');
%             pause(1);
%             set(ar(11),'Visible','off');
%         elseif (L45==0 && L46==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(6),'String');
%             set(z1(6),'String',' ');
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             rep1=get(z1(13),'String');
%             set(z1(13),'String',' ');
%             L(13)=0;
%             L46=0;
%             set(z1(6),'String',rep1);
%             L(6)=str2double(rep1);
%             set(el(13),'Visible','off');
%             pause(1);
%             set(ar(12),'Visible','off');
%         elseif(L45==1 && L46==0)  
%             set(z1(1),'String',' ');
%             rep=get(z1(12),'String');
%             set(z1(12),'String',' ');
%             L(12)=0;
%             L45=0;
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             set(el(12),'Visible','off');
%             pause(1);
%             set(ar(11),'Visible','off');
%         elseif(L45==0 && L46==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(6),'String');
%             set(z1(6),'String',' ');
%             L(6)=0;
%             L33=0;
%             set(z1(1),'String',rep);
%             L(1)=str2double(rep);
%             set(el(6),'Visible','off');
%             pause(1);
%             set(ar(5),'Visible','off');
%         end
%     end
% elseif(ele==L(1) && L21==1 && L22==1)
%    if (L22==1 && L33==0 && L34==0)
%         set(z1(1),'String',' ');
%         rep=get(z1(3),'String');
%         set(z1(1),'String',rep);
%          L(1)=str2double(rep);
%         set(z1(3),'String',' ');
%         L(3)=0;
%         L22=0;
%         set(el(3),'Visible','off');
%         pause(1);
%         set(ar(2),'Visible','off');
%     elseif(L22==1 && L33==1 && L34==0) 
%         if (L45==1 && L46==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(12),'String');
%             set(z1(12),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%              L(12)=0;
%              L45=0;
%             set(el(12),'Visible','off');
%             pause(1);
%             set(ar(11),'Visible','off');
%         elseif(L45==1 && L46==0)
%               set(z1(1),'String',' ');
%             rep=get(z1(12),'String');
%             set(z1(12),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%              L(12)=0;
%              L45=0;
%             set(el(12),'Visible','off');
%             pause(1);
%             set(ar(11),'Visible','off');
%         elseif(L45==0 && L46==1)
%              
%             set(z1(1),'String',' ');
%             rep=get(z1(6),'String');
%             set(z1(6),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(13),'String');
%             set(z1(13),'String',' ');
%             set(z1(6),'String',rep1);
%              L(6)=str2double(rep1);
%              L(13)=0;
%              L46=0;
%             set(el(13),'Visible','off');
%             pause(1);
%             set(ar(12),'Visible','off');
%         elseif(L45==0 && L46==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(6),'String');
%             set(z1(6),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%              L(6)=0;
%              L33=0;
%             set(el(6),'Visible','off');
%             pause(1);
%             set(ar(5),'Visible','off');
%         end
%     elseif(L22==1 && L33==0 && L34==1) 
%         if (L47==1 && L48==1)
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(7),'String');
%             set(z1(7),'String',' ');
%             set(z1(3),'String',rep1);
%              L(3)=str2double(rep1);
%             
%             rep2=get(z1(15),'String');
%             set(z1(15),'String',' ');
%             set(z1(7),'String',rep2);
%              L(7)=str2double(rep2);
%             set(el(15),'Visible','off');
%             pause(1);
%             set(ar(14),'Visible','off');
%             rep3=get(z1(14),'String');
%             set(z1(14),'String',' ');
%             pause(1);
%             set(ar(5),'Visible','on');
%             pause(1);
%             set(el(6),'Visible','on');
%             set(z1(6),'String',rep3);
%              L(6)=str2double(rep3);
%              L(14)=0;
%              L(15)=0;
%              L47=0;
%              pause(1);
%             set(el(14),'Visible','off');
%             pause(1);
%             set(ar(13),'Visible','off');
%             
%             
%         elseif(L47==1 && L48==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep2=get(z1(7),'String');
%             set(z1(7),'String',' ');
%               set(z1(3),'String',rep2);
%             rep1=get(z1(14),'String');
%             set(z1(14),'String',' ');
%             set(ar(5),'Visible','on');
%             pause(1);
%             set(el(6),'Visible','on');
%             set(z1(6),'String',rep1);
%             L(6)=str2double(rep1);
%             L(3)=str2double(rep2);
%             
%             L(14)=0;
%             L47=0;
%             set(el(14),'Visible','off');
%             pause(1);
%             set(ar(13),'Visible','off');
%         elseif(L47==0 && L48==1)
%              
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(7),'String');
%             set(z1(7),'String',' ');
%          
%             set(z1(3),'String',rep1);
%              L(3)=str2double(rep1);
%             rep2=get(z1(15),'String');
%             set(z1(15),'String',' ');
%             set(z1(7),'String',rep2);
%              L(7)=str2double(rep2);
%              L(15)=0;
%              L48=0;
%             set(el(15),'Visible','off');
%             pause(1);
%             set(ar(14),'Visible','off');
%         elseif(L47==0 && L48==0)
%             set(z1(1),'String',' ');
%             rep=get(z1(3),'String');
%             set(z1(3),'String',' ');
%             set(z1(1),'String',rep);
%              L(1)=str2double(rep);
%             rep1=get(z1(7),'String');
%             set(z1(7),'String',' ');
%             set(z1(3),'String',rep1);
%             L(3)=str2double(rep1);
%             L(7)=0;
%             L34=0;
%             set(el(7),'Visible','off');
%             pause(1);
%             set(ar(6),'Visible','off');
%         end 
%     elseif(L22==1 && L33==1 && L34==1)  
%         for i=1:15
%             if ele==L1(i)
%             rep=L1(i+1);
%             end
%         end
%         for i=1:15
%         if L(i)==ele
%             set(z1(i),'String',' ');
%             pause(1);
%         
%        % if(x==z1(8) || x==z1(9) || x==z1(10)|| x==z(11)|| x==z1(12)|| x==z1(13)|| x==z1(14)|| x==z1(15))
%             
%             for j=1:15
%                 if L(j)==rep
%                 set(z1(j),'String',' ');
%                 set(z1(i),'String',num2str(rep));
%                  L(i)=rep;
%                  L(j)=0;
%                 if j==6
%                    L33=0;
%                 elseif j==7
%                     L34=0;
%                 elseif j==12
%                     L45=0;
%                 elseif j==13
%                     L46=0;
%                 elseif j==14
%                     L47=0;
%                 elseif j==15
%                     L48=0;
%                 end
%                 set(el(j),'Visible','off');
%                 pause(1);
%                 set(ar(j-1),'Visible','off');
%                 end
%             end   
%         end
%         end
%     end
% elseif(ele==L(1) && L21==0 && L22==0)
%     set(z1(1),'String',' ');
%     L(1)=0;
%     L11=0;
%     pause(1);
%     set(el(1),'Visible','off');
%     
% end
% if ele==L(4)
%     if(L41==1 && L42==1)
%         set(z1(4),'String',' ');
%         rep=get(z1(9),'String');
%         set(z1(4),'String',rep);
%         L(4)=str2double(rep);
%         L(9)=0;
%         L42=0;
%         set(z1(9),'String',' ');
%         set(el(9),'Visible','off');
%         pause(1);
%         set(ar(8),'Visible','off');
%     elseif(L41==1 && L42==0)
%         set(z1(4),'String',' ');
%         rep=get(z1(8),'String');
%         set(z1(8),'String',' ');
%         set(z1(4),'String',rep);
%          L(4)=str2double(rep);
%          L(8)=0;
%          L41=0;
%         set(el(8),'Visible','off');pause(1);
%         set(ar(7),'Visible','off');
%     elseif(L41==0 && L42==1)
%          set(z1(4),'String',' ');
%         rep=get(z1(9),'String');
%         set(z1(9),'String',' ');
%         set(z1(4),'String',rep);
%          L(4)=str2double(rep);
%          L(9)=0;
%          L42=0;
%         set(el(9),'Visible','off');
%         set(ar(8),'Visible','off');
%     elseif(L41==0 && L42==0)
%         set(z1(4),'String',' ');
%         set(el(4),'Visible','off');
%         L(4)=0;
%         L31=0;
%         pause(1);
%         set(ar(3),'Visible','off');
%     end
% end
% if ele==L(5)
%     if(L43==1 && L44==1)
%         set(z1(5),'String',' ');
%         rep=get(z1(11),'String');
%         set(z1(5),'String',rep);
%          L(5)=str2double(rep);
%          L(11)=0;
%          L44=0;
%         set(z1(11),'String',' ');
%         set(el(11),'Visible','off');pause(1);
%         set(ar(10),'Visible','off');
%     elseif(L43==1 && L44==0)
%         set(z1(5),'String',' ');
%         rep=get(z1(10),'String');
%         set(z1(10),'String',' ');
%         set(z1(5),'String',rep);
%          L(5)=str2double(rep);
%          L(10)=0;
%          L43=0;
%         set(el(10),'Visible','off');pause(1);
%         set(ar(9),'Visible','off');
%     elseif(L43==0 && L44==1)
%          set(z1(5),'String',' ');
%         rep=get(z1(11),'String');
%         set(z1(11),'String',' ');
%         set(z1(5),'String',rep);
%          L(5)=str2double(rep);
%          L(11)=0;
%          L44=0;
%         set(el(11),'Visible','off');pause(1);
%         set(ar(10),'Visible','off');
%     elseif(L43==0 && L44==0)
%         set(z1(5),'String',' ');
%         set(el(5),'Visible','off');
%         L(5)=0;
%         L32=0;
%         pause(1);
%         set(ar(4),'Visible','off');
%     end
% end
% if ele==L(6)
%     if(L45==1 && L46==1)
%         set(z1(6),'String',' ');
%         rep=get(z1(13),'String');
%         set(z1(6),'String',rep);
%          L(6)=str2double(rep);
%          L(13)=0;
%          L46=0;
%         set(z1(13),'String',' ');
%         set(el(13),'Visible','off');pause(1);
%         set(ar(12),'Visible','off');
%     elseif(L45==1 && L46==0)
%         set(z1(6),'String',' ');
%         rep=get(z1(12),'String');
%         set(z1(12),'String',' ');
%         set(z1(6),'String',rep);
%          L(6)=str2double(rep);
%          L(12)=0;
%          L45=0;
%         set(el(12),'Visible','off');pause(1);
%         set(ar(11),'Visible','off');
%     elseif(L45==0 && L46==1)
%          set(z1(6),'String',' ');
%         rep=get(z1(13),'String');
%         set(z1(13),'String',' ');
%         set(z1(6),'String',rep);
%          L(6)=str2double(rep);
%          L(13)=0;
%          L46=0;
%         set(el(13),'Visible','off');pause(1);
%         set(ar(12),'Visible','off');
%     else
%         L(6)=0;
%         L33=0;
%         set(z1(6),'String',' ');
%         set(el(6),'Visible','off');pause(1);
%         set(ar(5),'Visible','off');
%     end
% end
% if ele==L(7)
%     if(L47==1 && L48==1)
%         set(z1(7),'String',' ');
%         rep=get(z1(15),'String');
%         set(z1(7),'String',rep);
%          L(7)=str2double(rep);
%          L(15)=0;
%          L48=0;
%         set(z1(15),'String',' ');
%         set(el(15),'Visible','off');pause(1);
%         set(ar(14),'Visible','off');
%     elseif(L47==1 && L48==0)
%         set(z1(7),'String',' ');
%         rep=get(z1(14),'String');
%         set(z1(14),'String',' ');
%         set(z1(7),'String',rep);
%          L(7)=str2double(rep);
%          L(14)=0;
%          L47=0;
%         set(el(14),'Visible','off');pause(1);
%         set(ar(13),'Visible','off');
%     elseif(L47==0 && L48==1)
%          set(z1(7),'String',' ');
%         rep=get(z1(15),'String');
%         set(z1(15),'String',' ');
%         set(z1(7),'String',rep);
%          L(7)=str2double(rep);
%          L(15)=0;
%          L48=0;
%         set(el(15),'Visible','off');pause(1);
%         set(ar(14),'Visible','off');
%     elseif(L47==0 && L48==0)
%         L(7)=0;
%         L34=0;
%         set(z1(7),'String',' ');
%         set(el(7),'Visible','off');
%         pause(1);
%         set(ar(6),'Visible','off');
%     end
% end
% for i=8:15
%     if ele==L(i)
%         set(z1(i),'String',' ');
%         L(i)=0;
%         if i==8
%             L41=0;
%         elseif i==9
%             L42=0;
%         elseif i==10
%             L43=0;
%         elseif i==11
%             L44=0;
%         elseif i==12
%             L45=0;
%         elseif i==13
%             L46=0;
%         elseif i==14
%             L47=0;
%         elseif i==15
%             L48=0;
%         end
%         set(el(i),'Visible','off');pause(1);
%         set(ar(i-1),'Visible','off');
%     end
% end
