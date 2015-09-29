function varargout = gui_mouse(varargin)
% GUI_MOUSE M-file for gui_mouse.fig
%      GUI_MOUSE, by itself, creates a new GUI_MOUSE or raises the existing
%      singleton*.
%
%      H = GUI_MOUSE returns the handle to a new GUI_MOUSE or the handle to
%      the existing singleton*.
%
%      GUI_MOUSE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_MOUSE.M with the given input arguments.
%
%      GUI_MOUSE('Property','Value',...) creates a new GUI_MOUSE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_mouse_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_mouse_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_mouse

% Last Modified by GUIDE v2.5 28-Oct-2014 00:55:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_mouse_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_mouse_OutputFcn, ...
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


% --- Executes just before gui_mouse is made visible.
function gui_mouse_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_mouse (see VARARGIN)
% Choose default command line output for gui_mouse
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_mouse wait for user response (see UIRESUME)
% uiwait(handles.fig_mouse);


% --- Outputs from this function are returned to the command line.
function varargout = gui_mouse_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse motion over figure - except title and menu.
function fig_mouse_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to fig_mouse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pos = get(hObject, 'currentpoint'); % get mouse location on figure
size = get(hObject,'position');
width = size(3); height = size(4);
global num;
a = floor(width./num); b = floor(height./num);
x = floor(pos(1)./a)+1; y = floor(pos(2)./b)+1; % assign locations to x and y

% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function fig_mouse_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to fig_mouse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pos = get(hObject, 'currentpoint'); % get mouse location on figure
size = get(hObject,'position');
width = size(3); height = size(4);
global num;
a = floor(width./num); b = floor(height./num);
x = floor(pos(1)./a)+1; y = floor(pos(2)./b)+1; % assign locations to x and y

% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function fig_mouse_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to fig_mouse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pos = get(hObject, 'currentpoint'); % get mouse location on figure
sizep = get(hObject,'position');
width = sizep(3); height = sizep(4);
global num;
a = floor(width./num); b = floor(height./num);
x = floor(pos(1)./a)+1; y = floor(pos(2)./b)+1; % assign locations to x and y
global locs;
locs = [locs; x y]; %appending each point to the previous locs matrix
plot(x,y,'x');
hold on
axis([1,num,1,num])
% Display the number of nodes that've been clicked to the screen
num_of_nodes = size(locs,1);
set(handles.lbl_last_action, 'string', ['Number of Nodes Clicked: ', num2str(num_of_nodes)]);

% --- Executes on button press in imdone.
function imdone_Callback(hObject, eventdata, handles)
% hObject    handle to imdone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global locs;
num_of_rows = size(locs,1);
fileID = fopen('topologyFile.m', 'w');
% Function Title
fprintf(fileID,'function [ topology ] = topologyFile( ~ )\n\n');
fprintf(fileID,'topology = [\n');
% Start printing all the nodes that've been clicked to the topologyFile
for i=1:num_of_rows
    fprintf(fileID,'%d ',locs(i,1)); %x value
    fprintf(fileID,'%d\n',locs(i,2)); %y value
end
fprintf(fileID,'];\n\n');
fprintf(fileID,'end');
fclose(fileID);
locs = []; %clear the variable after finishing printing for next-time execution


function numnodes_Callback(hObject, eventdata, handles)
% hObject    handle to numnodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numnodes as text
%        str2double(get(hObject,'String')) returns contents of numnodes as a double
global num;
num = str2double(get(handles.numnodes,'String'));

% --- Executes during object creation, after setting all properties.
function numnodes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numnodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
