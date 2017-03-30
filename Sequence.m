function varargout = Sequence(varargin)
% SEQUENCE MATLAB code for Sequence.fig
%      SEQUENCE, by itself, creates a new SEQUENCE or raises the existing
%      singleton*.
%
%      H = SEQUENCE returns the handle to a new SEQUENCE or the handle to
%      the existing singleton*.
%
%      SEQUENCE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEQUENCE.M with the given input arguments.
%
%      SEQUENCE('Property','Value',...) creates a new SEQUENCE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sequence_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Sequence_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sequence

% Last Modified by GUIDE v2.5 29-Mar-2017 01:16:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sequence_OpeningFcn, ...
                   'gui_OutputFcn',  @Sequence_OutputFcn, ...
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


% --- Executes just before Sequence is made visible.
function Sequence_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Sequence (see VARARGIN)

% Choose default command line output for Sequence
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sequence wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Sequence_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Set Leprechaun Pictures 
CardsImage(handles);
PlayerHand(handles);






% --- Executes on selection change in AiChoice.
function AiChoice_Callback(hObject, eventdata, handles)
% hObject    handle to AiChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns AiChoice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from AiChoice


% --- Executes during object creation, after setting all properties.
function AiChoice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AiChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




      






function edit162_Callback(hObject, eventdata, handles)
% hObject    handle to edit162 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit162 as text
%        str2double(get(hObject,'String')) returns contents of edit162 as a double


% --- Executes during object creation, after setting all properties.
function edit162_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit162 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit163_Callback(hObject, eventdata, handles)
% hObject    handle to edit163 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit163 as text
%        str2double(get(hObject,'String')) returns contents of edit163 as a double


% --- Executes during object creation, after setting all properties.
function edit163_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit163 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit164_Callback(hObject, eventdata, handles)
% hObject    handle to edit164 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit164 as text
%        str2double(get(hObject,'String')) returns contents of edit164 as a double


% --- Executes during object creation, after setting all properties.
function edit164_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit164 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit165_Callback(hObject, eventdata, handles)
% hObject    handle to edit165 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit165 as text
%        str2double(get(hObject,'String')) returns contents of edit165 as a double


% --- Executes during object creation, after setting all properties.
function edit165_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit165 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit166_Callback(hObject, eventdata, handles)
% hObject    handle to edit166 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit166 as text
%        str2double(get(hObject,'String')) returns contents of edit166 as a double


% --- Executes during object creation, after setting all properties.
function edit166_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit166 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit167_Callback(hObject, eventdata, handles)
% hObject    handle to edit167 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit167 as text
%        str2double(get(hObject,'String')) returns contents of edit167 as a double


% --- Executes during object creation, after setting all properties.
function edit167_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit167 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit168_Callback(hObject, eventdata, handles)
% hObject    handle to edit168 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit168 as text
%        str2double(get(hObject,'String')) returns contents of edit168 as a double


% --- Executes during object creation, after setting all properties.
function edit168_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit168 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in DiscardButton.
function DiscardButton_Callback(hObject, eventdata, handles)
% hObject    handle to DiscardButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of DiscardButton


% --- Executes on button press in RemoveButton.
function RemoveButton_Callback(hObject, eventdata, handles)
% hObject    handle to RemoveButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RemoveButton


% --- Executes on button press in ResetButton.
function ResetButton_Callback(hObject, eventdata, handles)
% hObject    handle to ResetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R1C3.
function R1C3_Callback(hObject, eventdata, handles)
% hObject    handle to R1C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of R1C3
player1Token(handles)

% --- Executes on button press in R1C4.
function R1C4_Callback(hObject, eventdata, handles)
% hObject    handle to R1C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C5.
function R1C5_Callback(hObject, eventdata, handles)
% hObject    handle to R1C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C6.
function R1C6_Callback(hObject, eventdata, handles)
% hObject    handle to R1C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C7.
function R1C7_Callback(hObject, eventdata, handles)
% hObject    handle to R1C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C8.
function R1C8_Callback(hObject, eventdata, handles)
% hObject    handle to R1C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C9.
function R1C9_Callback(hObject, eventdata, handles)
% hObject    handle to R1C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C10.
function R1C10_Callback(hObject, eventdata, handles)
% hObject    handle to R1C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C1.
function R1C1_Callback(hObject, eventdata, handles)
% hObject    handle to R1C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C2.
function R1C2_Callback(hObject, eventdata, handles)
% hObject    handle to R1C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C3.
function R2C3_Callback(hObject, eventdata, handles)
% hObject    handle to R2C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C4.
function R2C4_Callback(hObject, eventdata, handles)
% hObject    handle to R2C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C5.
function R2C5_Callback(hObject, eventdata, handles)
% hObject    handle to R2C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C6.
function R2C6_Callback(hObject, eventdata, handles)
% hObject    handle to R2C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C7.
function R2C7_Callback(hObject, eventdata, handles)
% hObject    handle to R2C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C8.
function R2C8_Callback(hObject, eventdata, handles)
% hObject    handle to R2C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C9.
function R2C9_Callback(hObject, eventdata, handles)
% hObject    handle to R2C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C10.
function R2C10_Callback(hObject, eventdata, handles)
% hObject    handle to R2C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R1C2.
function pushbutton162_Callback(hObject, eventdata, handles)
% hObject    handle to R1C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R2C2.
function R2C2_Callback(hObject, eventdata, handles)
% hObject    handle to R2C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C3.
function R3C3_Callback(hObject, eventdata, handles)
% hObject    handle to R3C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C4.
function R3C4_Callback(hObject, eventdata, handles)
% hObject    handle to R3C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C5.
function R3C5_Callback(hObject, eventdata, handles)
% hObject    handle to R3C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C6.
function R3C6_Callback(hObject, eventdata, handles)
% hObject    handle to R3C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C7.
function R3C7_Callback(hObject, eventdata, handles)
% hObject    handle to R3C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C8.
function R3C8_Callback(hObject, eventdata, handles)
% hObject    handle to R3C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C9.
function R3C9_Callback(hObject, eventdata, handles)
% hObject    handle to R3C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C10.
function R3C10_Callback(hObject, eventdata, handles)
% hObject    handle to R3C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C1.
function R3C1_Callback(hObject, eventdata, handles)
% hObject    handle to R3C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R3C2.
function R3C2_Callback(hObject, eventdata, handles)
% hObject    handle to R3C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C3.
function R4C3_Callback(hObject, eventdata, handles)
% hObject    handle to R4C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C4.
function R4C4_Callback(hObject, eventdata, handles)
% hObject    handle to R4C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C5.
function R4C5_Callback(hObject, eventdata, handles)
% hObject    handle to R4C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C6.
function R4C6_Callback(hObject, eventdata, handles)
% hObject    handle to R4C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C7.
function R4C7_Callback(hObject, eventdata, handles)
% hObject    handle to R4C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C8.
function R4C8_Callback(hObject, eventdata, handles)
% hObject    handle to R4C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C9.
function R4C9_Callback(hObject, eventdata, handles)
% hObject    handle to R4C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C10.
function R4C10_Callback(hObject, eventdata, handles)
% hObject    handle to R4C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C1.
function R4C1_Callback(hObject, eventdata, handles)
% hObject    handle to R4C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R4C2.
function R4C2_Callback(hObject, eventdata, handles)
% hObject    handle to R4C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
player1Token(handles)

% --- Executes on button press in R5C3.
function R5C3_Callback(hObject, eventdata, handles)
% hObject    handle to R5C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C4.
function R5C4_Callback(hObject, eventdata, handles)
% hObject    handle to R5C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in R5C5.
function R5C5_Callback(hObject, eventdata, handles)
% hObject    handle to R5C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C6.
function R5C6_Callback(hObject, eventdata, handles)
% hObject    handle to R5C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C7.
function R5C7_Callback(hObject, eventdata, handles)
% hObject    handle to R5C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C8.
function R5C8_Callback(hObject, eventdata, handles)
% hObject    handle to R5C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C9.
function R5C9_Callback(hObject, eventdata, handles)
% hObject    handle to R5C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C10.
function R5C10_Callback(hObject, eventdata, handles)
% hObject    handle to R5C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C1.
function R5C1_Callback(hObject, eventdata, handles)
% hObject    handle to R5C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R5C2.
function R5C2_Callback(hObject, eventdata, handles)
% hObject    handle to R5C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R6C3.
function R6C3_Callback(hObject, eventdata, handles)
% hObject    handle to R6C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R6C4.
function R6C4_Callback(hObject, eventdata, handles)
% hObject    handle to R6C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R6C5.
function R6C5_Callback(hObject, eventdata, handles)
% hObject    handle to R6C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Token(handles)



% --- Executes on button press in R6C6.
function R6C6_Callback(hObject, eventdata, handles)
% hObject    handle to R6C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Token(handles)

% --- Executes on button press in R6C7.
function R6C7_Callback(hObject, eventdata, handles)
% hObject    handle to R6C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in R6C8.
function R6C8_Callback(hObject, eventdata, handles)
% hObject    handle to R6C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R6C9.
function R6C9_Callback(hObject, eventdata, handles)
% hObject    handle to R6C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R6C10.
function R6C10_Callback(hObject, eventdata, handles)
% hObject    handle to R6C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R6C1.
function R6C1_Callback(hObject, eventdata, handles)
% hObject    handle to R6C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R6C2.
function R6C2_Callback(hObject, eventdata, handles)
% hObject    handle to R6C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C3.
function R7C3_Callback(hObject, eventdata, handles)
% hObject    handle to R7C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C4.
function R7C4_Callback(hObject, eventdata, handles)
% hObject    handle to R7C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C5.
function R7C5_Callback(hObject, eventdata, handles)
% hObject    handle to R7C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C6.
function R7C6_Callback(hObject, eventdata, handles)
% hObject    handle to R7C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C7.
function R7C7_Callback(hObject, eventdata, handles)
% hObject    handle to R7C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C8.
function R7C8_Callback(hObject, eventdata, handles)
% hObject    handle to R7C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C9.
function R7C9_Callback(hObject, eventdata, handles)
% hObject    handle to R7C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C10.
function R7C10_Callback(hObject, eventdata, handles)
% hObject    handle to R7C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C1.
function R7C1_Callback(hObject, eventdata, handles)
% hObject    handle to R7C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R7C2.
function R7C2_Callback(hObject, eventdata, handles)
% hObject    handle to R7C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C3.
function R8C3_Callback(hObject, eventdata, handles)
% hObject    handle to R8C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C4.
function R8C4_Callback(hObject, eventdata, handles)
% hObject    handle to R8C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C5.
function R8C5_Callback(hObject, eventdata, handles)
% hObject    handle to R8C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C6.
function R8C6_Callback(hObject, eventdata, handles)
% hObject    handle to R8C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C7.
function R8C7_Callback(hObject, eventdata, handles)
% hObject    handle to R8C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C8.
function R8C8_Callback(hObject, eventdata, handles)
% hObject    handle to R8C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C9.
function R8C9_Callback(hObject, eventdata, handles)
% hObject    handle to R8C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C10.
function R8C10_Callback(hObject, eventdata, handles)
% hObject    handle to R8C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C1.
function R8C1_Callback(hObject, eventdata, handles)
% hObject    handle to R8C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R8C2.
function R8C2_Callback(hObject, eventdata, handles)
% hObject    handle to R8C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C3.
function R9C3_Callback(hObject, eventdata, handles)
% hObject    handle to R9C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C4.
function R9C4_Callback(hObject, eventdata, handles)
% hObject    handle to R9C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C5.
function R9C5_Callback(hObject, eventdata, handles)
% hObject    handle to R9C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C6.
function R9C6_Callback(hObject, eventdata, handles)
% hObject    handle to R9C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C7.
function R9C7_Callback(hObject, eventdata, handles)
% hObject    handle to R9C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C8.
function R9C8_Callback(hObject, eventdata, handles)
% hObject    handle to R9C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C9.
function R9C9_Callback(hObject, eventdata, handles)
% hObject    handle to R9C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C10.
function R9C10_Callback(hObject, eventdata, handles)
% hObject    handle to R9C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C1.
function R9C1_Callback(hObject, eventdata, handles)
% hObject    handle to R9C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R9C2.
function R9C2_Callback(hObject, eventdata, handles)
% hObject    handle to R9C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C3.
function R10C3_Callback(hObject, eventdata, handles)
% hObject    handle to R10C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C4.
function R10C4_Callback(hObject, eventdata, handles)
% hObject    handle to R10C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C5.
function R10C5_Callback(hObject, eventdata, handles)
% hObject    handle to R10C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C6.
function R10C6_Callback(hObject, eventdata, handles)
% hObject    handle to R10C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C7.
function R10C7_Callback(hObject, eventdata, handles)
% hObject    handle to R10C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C8.
function R10C8_Callback(hObject, eventdata, handles)
% hObject    handle to R10C8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C9.
function R10C9_Callback(hObject, eventdata, handles)
% hObject    handle to R10C9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C10.
function R10C10_Callback(hObject, eventdata, handles)
% hObject    handle to R10C10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C1.
function R10C1_Callback(hObject, eventdata, handles)
% hObject    handle to R10C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R10C2.
function R10C2_Callback(hObject, eventdata, handles)
% hObject    handle to R10C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PCard1.
function PCard1_Callback(hObject, eventdata, handles)
% hObject    handle to PCard1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PCard1


% --- Executes on button press in PCard3.
function PCard3_Callback(hObject, eventdata, handles)
% hObject    handle to PCard3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PCard3


% --- Executes on button press in PCard4.
function PCard4_Callback(hObject, eventdata, handles)
% hObject    handle to PCard4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PCard2.
function PCard2_Callback(hObject, eventdata, handles)
% hObject    handle to PCard2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PCard2


% --- Executes on button press in PCard6.
function PCard6_Callback(hObject, eventdata, handles)
% hObject    handle to PCard6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PCard6


% --- Executes on button press in PCard5.
function PCard5_Callback(hObject, eventdata, handles)
% hObject    handle to PCard5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PCard5


% --- Executes on button press in PCard7.
function PCard7_Callback(hObject, eventdata, handles)
% hObject    handle to PCard7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
