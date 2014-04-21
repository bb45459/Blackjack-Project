function varargout = humantoolprelim(varargin)
% HUMANTOOLPRELIM MATLAB code for humantoolprelim.fig
%      HUMANTOOLPRELIM, by itself, creates a new HUMANTOOLPRELIM or raises the existing
%      singleton*.
%
%      H = HUMANTOOLPRELIM returns the handle to a new HUMANTOOLPRELIM or the handle to
%      the existing singleton*.
%
%      HUMANTOOLPRELIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HUMANTOOLPRELIM.M with the given input arguments.
%
%      HUMANTOOLPRELIM('Property','Value',...) creates a new HUMANTOOLPRELIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before humantoolprelim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to humantoolprelim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help humantoolprelim

% Last Modified by GUIDE v2.5 21-Apr-2014 10:17:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @humantoolprelim_OpeningFcn, ...
                   'gui_OutputFcn',  @humantoolprelim_OutputFcn, ...
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


% --- Executes just before humantoolprelim is made visible.
function humantoolprelim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to humantoolprelim (see VARARGIN)

% Choose default command line output for humantoolprelim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes humantoolprelim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = humantoolprelim_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function betSizeEditText_Callback(hObject, eventdata, handles)
% hObject    handle to betSizeEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of betSizeEditText as text
%        str2double(get(hObject,'String')) returns contents of betSizeEditText as a double


% --- Executes during object creation, after setting all properties.
function betSizeEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to betSizeEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitButton.
function hitButton_Callback(hObject, eventdata, handles)
% hObject    handle to hitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in standButton.
function standButton_Callback(hObject, eventdata, handles)
% hObject    handle to standButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in doubleDownButton.
function doubleDownButton_Callback(hObject, eventdata, handles)
% hObject    handle to doubleDownButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in splitButton.
function splitButton_Callback(hObject, eventdata, handles)
% hObject    handle to splitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in soft17Checkbox.
function soft17Checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to soft17Checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of soft17Checkbox


% --- Executes on selection change in decksPopup.
function decksPopup_Callback(hObject, eventdata, handles)
% hObject    handle to decksPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns decksPopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from decksPopup


% --- Executes during object creation, after setting all properties.
function decksPopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to decksPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initialStakeEditText_Callback(hObject, eventdata, handles)
% hObject    handle to initialStakeEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initialStakeEditText as text
%        str2double(get(hObject,'String')) returns contents of initialStakeEditText as a double


% --- Executes during object creation, after setting all properties.
function initialStakeEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initialStakeEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in humanPlayersPopup.
function humanPlayersPopup_Callback(hObject, eventdata, handles)
% hObject    handle to humanPlayersPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns humanPlayersPopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from humanPlayersPopup


% --- Executes during object creation, after setting all properties.
function humanPlayersPopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to humanPlayersPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in compPlayersPopup.
function compPlayersPopup_Callback(hObject, eventdata, handles)
% hObject    handle to compPlayersPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns compPlayersPopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from compPlayersPopup


% --- Executes during object creation, after setting all properties.
function compPlayersPopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to compPlayersPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% play until player 1 runs out of money
play = true;
while play == true

    
    numcompplayers = get(handles.compPlayersPopup,'Value');
    numhumanplayers = get(handles.humanPlayersPopup,'Value');
    numplayers = numcompplayers+numhumanplayers;
    
numdecks = get(handles.decksPopup,'Value');
initialstake = str2double(get(handles.initialStakeEditText,'String'));
betvalue = str2double(get(handles.betSizeEditText,'String'));
standOnSoft17 = get(handles.soft17Checkbox,'Value');
numhandsplayed = 0;



% Create stakes
stakes=zeros(1,numplayers);
bets=zeros(2,numplayers);

for i=numplayers-numhumanplayers:numplayers
    stakes(i)=initialstake;
    bets(1,i)=betvalue;
end

% Simulate the hands for the computers

            stakes = playSimpleStrategyHand(numplayers,numdecks,stakes,bets,standOnSoft17);


    disp(num2str(stakes(1)))
    
    numhandsplayed=numhandsplayed+1;

    

disp([num2str(numhandsplayed) ' hands played'])
end

% --- Executes on button press in resetButton.
function resetButton_Callback(hObject, eventdata, handles)
% hObject    handle to resetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

play = false;
