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

% Last Modified by GUIDE v2.5 25-Apr-2017 21:45:53

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

setappdata(gcf,'hButtons',hButton);

for iAI=1:2
    for iCard=1:7
        handName=['AI',num2str(iAI),'Card',num2str(iCard)];
        hHand(iAI,iCard)=findobj('Tag',handName);
        set(hHand(iAI,iCard),'Callback',{@HandCard_Callback,handles});
    end
end

setappdata(gcf,'hHand',hHand);

% Set Leprechaun Pictures 
CardsImage(handles);
DataStructure(handles);
ImprovedShuffleDeck(handles);
dealFirstHand(handles,hObject);




% --- Outputs from this function are returned to the command line.
function varargout = SequenceTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in AiChoice.
function AiChoice_Callback(hObject, eventdata, handles)
% hObject    handle to AiChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns AiChoice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from AiChoice
player=handles.AiChoice.Value;
if player==1
RandomStrategyFunc(handles,hObject);
elseif player==2
     TotalAdvantageValueStrategyFunc(handles,hObject);
elseif player==3
    RandomAndAdvantageStrategyFunc(handles,hObject);
end

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



% --- Executes on button press in ResetButton.
function ResetButton_Callback(hObject, eventdata, handles)
% hObject    handle to ResetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for iRow=1:10
    for iColumn=1:10
        buttonName=['R',num2str(iRow),'C',num2str(iColumn)];
        hButton(iRow,iColumn)=findobj('Tag',buttonName);
        set(hButton(iRow,iColumn),'BackGroundColor',[0.9020 0.7804 0.2510]);
       
    end
end
for iAI=1:2
    for iCard=1:7
        handName=['AI',num2str(iAI),'Card',num2str(iCard)];
        hHand(iAI,iCard)=findobj('Tag',handName);
        if iAI==1
            set(hHand(iAI,iCard),'CData',[]);
            set(hHand(iAI,iCard),'BackGroundColor',[0 1 1]);
            
        else
            set(hHand(iAI,iCard),'CData',[]);
            set(hHand(iAI,iCard),'BackGroundColor',[1 0 1]);
        end
    end
end
set(handles.pilePosition,'Value',15);
handles.WinnerText.String=[];
DataStructure(handles);
ImprovedShuffleDeck(handles);
dealFirstHand(handles,hObject);


% --- Executes on button press
function CardButton_Callback(hObject, eventdata, handles)
% hObject    handle to button that called it (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of button that called it





% --- Executes on button press in AI1Card1.
function HandCard_Callback(hObject, eventdata, handles)
% hObject    handle to AI1Card1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of AI1Card1



function pilePosition_Callback(hObject, eventdata, handles)
% hObject    handle to pilePosition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pilePosition as text
%        str2double(get(hObject,'String')) returns contents of pilePosition as a double


% --- Executes during object creation, after setting all properties.
function pilePosition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilePosition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in R0C1.
function R0C1_Callback(hObject, eventdata, handles)
% hObject    handle to R0C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R1C0.
function R1C0_Callback(hObject, eventdata, handles)
% hObject    handle to R1C0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R0C2.
function R0C2_Callback(hObject, eventdata, handles)
% hObject    handle to R0C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R2C0.
function R2C0_Callback(hObject, eventdata, handles)
% hObject    handle to R2C0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function blueColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blueColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on slider movement.
function AI1OffSlider_Callback(hObject, eventdata, handles)
% hObject    handle to AI1OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal=handles.AI1OffSlider.Value;
textVal=num2str(sliderVal);
handles.AI1OffText.String=textVal;

% --- Executes during object creation, after setting all properties.
function AI1OffSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI1OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function AI1DefSlider_Callback(hObject, eventdata, handles)
% hObject    handle to AI1OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal=handles.AI1DefSlider.Value;
textVal=num2str(sliderVal);
handles.AI1DefText.String=textVal;

% --- Executes during object creation, after setting all properties.
function AI1DefSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI1OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function AI2OffSlider_Callback(hObject, eventdata, handles)
% hObject    handle to AI2OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal=handles.AI2OffSlider.Value;
textVal=num2str(sliderVal);
handles.AI2OffText.String=textVal;

% --- Executes during object creation, after setting all properties.
function AI2OffSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI2OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function AI2DefSlider_Callback(hObject, eventdata, handles)
% hObject    handle to AI2OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal=handles.AI2DefSlider.Value;
textVal=num2str(sliderVal);
handles.AI2DefText.String=textVal;

% --- Executes during object creation, after setting all properties.
function AI2DefSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI2OffSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function edit172_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit172 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function AI1DefText_Callback(hObject, eventdata, handles)
% hObject    handle to AI1DefText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AI1DefText as text
%        str2double(get(hObject,'String')) returns contents of AI1DefText as a double
textVal=handles.AI1DefText.String;
sliderVal=str2double(textVal);
handles.AI1DefSlider.Value=sliderVal;

% --- Executes during object creation, after setting all properties.
function AI1DefText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI1DefText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AI1OffText_Callback(hObject, eventdata, handles)
% hObject    handle to AI1OffText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AI1OffText as text
%        str2double(get(hObject,'String')) returns contents of AI1OffText as a double
textVal=handles.AI1OffText.String;
sliderVal=str2double(textVal);
handles.AI1OffSlider.Value=sliderVal;

% --- Executes during object creation, after setting all properties.
function AI1OffText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI1OffText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AI2DefText_Callback(hObject, eventdata, handles)
% hObject    handle to AI2DefText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AI2DefText as text
%        str2double(get(hObject,'String')) returns contents of AI2DefText as a double
textVal=handles.AI2DefText.String;
sliderVal=str2double(textVal);
handles.AI2OffSlider.Value=sliderVal;

% --- Executes during object creation, after setting all properties.
function AI2DefText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI2DefText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AI2OffText_Callback(hObject, eventdata, handles)
% hObject    handle to AI2OffText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AI2OffText as text
%        str2double(get(hObject,'String')) returns contents of AI2OffText as a double
textVal=handles.AI2OffText.String;
sliderVal=str2double(textVal);
handles.AI2OffSlider.Value=sliderVal;

% --- Executes during object creation, after setting all properties.
function AI2OffText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI2OffText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
