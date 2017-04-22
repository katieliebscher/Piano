function varargout = sampleBoard(varargin)
% SAMPLEBOARD MATLAB code for sampleBoard.fig
%      SAMPLEBOARD, by itself, creates a new SAMPLEBOARD or raises the existing
%      singleton*.
%
%      H = SAMPLEBOARD returns the handle to a new SAMPLEBOARD or the handle to
%      the existing singleton*.
%
%      SAMPLEBOARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAMPLEBOARD.M with the given input arguments.
%
%      SAMPLEBOARD('Property','Value',...) creates a new SAMPLEBOARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sampleBoard_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sampleBoard_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sampleBoard

% Last Modified by GUIDE v2.5 09-Apr-2017 16:16:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sampleBoard_OpeningFcn, ...
                   'gui_OutputFcn',  @sampleBoard_OutputFcn, ...
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


% --- Executes just before sampleBoard is made visible.
function sampleBoard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sampleBoard (see VARARGIN)

% Choose default command line output for sampleBoard
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sampleBoard wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sampleBoard_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in R1C1.
function R1C1_Callback(hObject, eventdata, handles)
% hObject    handle to R1C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R2C1.
function R2C1_Callback(hObject, eventdata, handles)
% hObject    handle to R2C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R2C2.
function R2C2_Callback(hObject, eventdata, handles)
% hObject    handle to R2C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in R1C2.
function R1C2_Callback(hObject, eventdata, handles)
% hObject    handle to R1C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
playCardsInOrder(handles);
