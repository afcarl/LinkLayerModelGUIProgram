function varargout = gui_main(varargin)
% GUI_MAIN MATLAB code for gui_main.fig
%      GUI_MAIN, by itself, creates a new GUI_MAIN or raises the existing
%      singleton*.
%
%      H = GUI_MAIN returns the handle to a new GUI_MAIN or the handle to
%      the existing singleton*.
%
%      GUI_MAIN('CALLBACK',hObject,eventData,handles,...) calls the local 
%      function named CALLBACK in GUI_MAIN.M with the given input arguments.
%
%      GUI_MAIN('Property','Value',...) creates a new GUI_MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_main

% Last Modified by GUIDE v2.5 06-Dec-2014 00:52:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_main_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_main_OutputFcn, ...
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


% --- Executes just before gui_main is made visible.
function gui_main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_main (see VARARGIN)

% Choose default command line output for gui_main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in modulationpop.
function modulationpop_Callback(hObject, eventdata, handles)
% hObject    handle to modulationpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns modulationpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from modulationpop

% --- Executes during object creation, after setting all properties.
function modulationpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to modulationpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in encodingpop.
function encodingpop_Callback(hObject, eventdata, handles)
% hObject    handle to encodingpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns encodingpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from encodingpop

% --- Executes during object creation, after setting all properties.
function encodingpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to encodingpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function preamblel_Callback(hObject, eventdata, handles)
% hObject    handle to preamblel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of preamblel as text
%        str2double(get(hObject,'String')) returns contents of preamblel as a double


% --- Executes during object creation, after setting all properties.
function preamblel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to preamblel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function framel_Callback(hObject, eventdata, handles)
% hObject    handle to framel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of framel as text
%        str2double(get(hObject,'String')) returns contents of framel as a double

% --- Executes during object creation, after setting all properties.
function framel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to framel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pathlossexp_Callback(hObject, eventdata, handles)
% hObject    handle to pathlossexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pathlossexp as text
%        str2double(get(hObject,'String')) returns contents of pathlossexp as a double

% --- Executes during object creation, after setting all properties.
function pathlossexp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pathlossexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function shadowstd_Callback(hObject, eventdata, handles)
% hObject    handle to shadowstd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of shadowstd as text
%        str2double(get(hObject,'String')) returns contents of shadowstd as a double

% --- Executes during object creation, after setting all properties.
function shadowstd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shadowstd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in topopop.
function topopop_Callback(hObject, eventdata, handles)
% hObject    handle to topopop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns topopop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from topopop
global UserSettings;
val = get(handles.topopop,'Value');
if (val == 4)
    gui_mouse(UserSettings);
    return;
end


% --- Executes during object creation, after setting all properties.
function topopop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to topopop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gridunit_Callback(hObject, eventdata, handles)
% hObject    handle to gridunit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gridunit as text
%        str2double(get(hObject,'String')) returns contents of gridunit as a double

% --- Executes during object creation, after setting all properties.
function gridunit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gridunit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numofnodes_Callback(hObject, eventdata, handles)
% hObject    handle to numofnodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numofnodes as text
%        str2double(get(hObject,'String')) returns contents of numofnodes as a double

% --- Executes during object creation, after setting all properties.
function numofnodes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numofnodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function terrain_Callback(hObject, eventdata, handles)
% hObject    handle to terrain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of terrain as text
%        str2double(get(hObject,'String')) returns contents of terrain as a double
%terrx = str2double(get(handles.terrain,'String'));


% --- Executes during object creation, after setting all properties.
function terrain_CreateFcn(hObject, eventdata, handles)
% hObject    handle to terrain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function tempcorr_Callback(hObject, eventdata, handles)
% hObject    handle to tempcorr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tempcorr as text
%        str2double(get(hObject,'String')) returns contents of tempcorr as a double

% --- Executes during object creation, after setting all properties.
function tempcorr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tempcorr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function spatcorr_Callback(hObject, eventdata, handles)
% hObject    handle to spatcorr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of spatcorr as text
%        str2double(get(hObject,'String')) returns contents of spatcorr as a double

% --- Executes during object creation, after setting all properties.
function spatcorr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to spatcorr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in gobutt.
function gobutt_Callback(hObject, eventdata, handles)
% hObject    handle to gobutt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fileID = fopen('inputFile.m', 'w');

% Function Title
fprintf(fileID,'function [nameFile] = inputFile(topologyFile);\n\n');

% Constant Values
fprintf(fileID,'PL_D0 = 55.0;\n');
fprintf(fileID,'D0 = 1.0;\n');
fprintf(fileID,'OUTPUT_POWER = -7.0;\n');
fprintf(fileID,'NOISE_FLOOR = -105.0;\n');
fprintf(fileID,'ASYMMETRY = 1;\n');
fprintf(fileID,'COVM = [3.7 -3.3; -3.3 6.0];\n\n');

% Channel Parameters
pathloss = str2double(get(handles.pathlossexp,'String'));
fprintf(fileID,'PATH_LOSS_EXPONENT = %d;\n',pathloss);
shadowing = str2double(get(handles.shadowstd,'String'));
fprintf(fileID,'SHADOWING_STANDARD_DEVIATION = %d;\n\n',shadowing);

% Radio Parameters
modul = get(handles.modulationpop,'Value');
fprintf(fileID,'MODULATION = %d;\n',modul);
encod = get(handles.encodingpop,'Value');
fprintf(fileID,'ENCODING = %d;\n',encod);
preamble = str2double(get(handles.preamblel,'String'));
fprintf(fileID,'PREAMBLE_LENGTH = %d;\n',preamble);
frame = str2double(get(handles.framel,'String'));
fprintf(fileID,'FRAME_LENGTH = %d;\n\n',frame);

% Topology
topotype = get(handles.topopop,'Value');
fprintf(fileID,'TOPOLOGY = %d;\n',topotype);
gunit = str2double(get(handles.gridunit,'String'));
fprintf(fileID,'GRID_UNIT = %d;\n',gunit);
numnodes = str2double(get(handles.numofnodes,'String'));
fprintf(fileID,'NUMBER_OF_NODES = %d;\n',numnodes);
terr = str2double(get(handles.terrain,'String'));
fprintf(fileID,'TERRAIN_DIMENSIONS_X = %d;\n',terr);
fprintf(fileID,'TERRAIN_DIMENSIONS_Y = %d;\n',terr);
tofsim = str2double(get(handles.timesofsim,'String'));
fprintf(fileID,'NUMBER_OF_ITERATIONS = %d;\n',tofsim);
alpha = str2double(get(handles.tempcorr,'String'));
fprintf(fileID,'TEMPORAL_CORRELATION_COEFFICIENT = %d;\n',alpha);
beta = str2double(get(handles.spatcorr,'String'));
fprintf(fileID,'SPATIAL_CORRELATION_COEFFICIENT = %d;\n\n',beta);

% Save File
fprintf(fileID,'save nameFile;\n');
fprintf(fileID,'nameFile = ''nameFile'';\n');
fclose(fileID);

% Run it
if (topotype==4)
    [topo, prrM, rssi] = LinkLayerModel(topologyFile);
else
    [topo, prrM, rssi] = LinkLayerModel;
end

%%%% clear up parameters in the files


function timesofsim_Callback(hObject, eventdata, handles)
% hObject    handle to timesofsim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of timesofsim as text
%        str2double(get(hObject,'String')) returns contents of timesofsim as a double


% --- Executes during object creation, after setting all properties.
function timesofsim_CreateFcn(hObject, eventdata, handles)
% hObject    handle to timesofsim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
