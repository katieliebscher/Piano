function varargout = SequenceTool(varargin)
% SEQUENCETOOL MATLAB code for SequenceTool.fig
%      SEQUENCETOOL, by itself, creates a new SEQUENCETOOL or raises the existing
%      singleton*.
%
%      H = SEQUENCETOOL returns the handle to a new SEQUENCETOOL or the handle to
%      the existing singleton*.
%
%      SEQUENCETOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEQUENCETOOL.M with the given input arguments.
%
%      SEQUENCETOOL('Property','Value',...) creates a new SEQUENCETOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SequenceTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SequenceTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SequenceTool

% Last Modified by GUIDE v2.5 09-Apr-2017 16:05:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SequenceTool_OpeningFcn, ...
                   'gui_OutputFcn',  @SequenceTool_OutputFcn, ...
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


% --- Executes just before SequenceTool is made visible.
function SequenceTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SequenceTool (see VARARGIN)

% Choose default command line output for SequenceTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SequenceTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% Assign the callback function to all the card buttons
for iRow=1:10
    for iColumn=1:10
        buttonName=['R',num2str(iRow),'C',num2str(iColumn)];
        hButton(iRow,iColumn)=findobj('Tag',buttonName);
        set(hButton(iRow,iColumn),'Callback',{@CardButton_Callback,handles});
    end
end
setappdata(gcf,'hButton',hButton);

% --- Outputs from this function are returned to the command line.
function varargout = SequenceTool_OutputFcn(hObject, eventdata, handles) 
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
for iRow=1:10
    for iColumn=1:10
        buttonName=['R',num2str(iRow),'C',num2str(iColumn)];
        hButton(iRow,iColumn)=findobj('Tag',buttonName);
        set(hButton(iRow,iColumn),'BackGroundColor',[0.9020 0.7804 0.2510])
    end
end

% --- Executes on button press in R1C3.
function CardButton_Callback(hObject, eventdata, handles)
% hObject    handle to button that called it (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of button that called it

[PlayerNum]=PlayerChoiceF(handles);
if PlayerNum==1
   PlayerOneTokenF(handles,hObject);
else 
    PlayerTwoTokenF(handles,hObject);

end

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


