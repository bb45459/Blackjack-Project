function varargout = ComputerTool(varargin)
% COMPUTERTOOL MATLAB code for ComputerTool.fig
%      COMPUTERTOOL, by itself, creates a new COMPUTERTOOL or raises the existing
%      singleton*.
%
%      H = COMPUTERTOOL returns the handle to a new COMPUTERTOOL or the handle to
%      the existing singleton*.
%
%      COMPUTERTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMPUTERTOOL.M with the given input arguments.
%
%      COMPUTERTOOL('Property','Value',...) creates a new COMPUTERTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ComputerTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ComputerTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ComputerTool

% Last Modified by GUIDE v2.5 20-Apr-2014 17:06:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @ComputerTool_OpeningFcn, ...
    'gui_OutputFcn',  @ComputerTool_OutputFcn, ...
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


% --- Executes just before ComputerTool is made visible.
function ComputerTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ComputerTool (see VARARGIN)

% Choose default command line output for ComputerTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ComputerTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);
 
initialization = zeros(1,2);
set(handles.dataTable,'Data',initialization);

% --- Outputs from this function are returned to the command line.
function varargout = ComputerTool_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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


% --- Executes on button press in soft17Checkbox.
function soft17Checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to soft17Checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of soft17Checkbox


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



function totalSimulationsText_Callback(hObject, eventdata, handles)
% hObject    handle to totalSimulationsText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of totalSimulationsText as text
%        str2double(get(hObject,'String')) returns contents of totalSimulationsText as a double


% --- Executes during object creation, after setting all properties.
function totalSimulationsText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalSimulationsText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in simulateButton.
function simulateButton_Callback(hObject, eventdata, handles)
% hObject    handle to simulateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

numplayers = get(handles.compPlayersPopup,'Value');
numdecks = get(handles.decksPopup,'Value');
initialstake = str2double(get(handles.initialStakeEditText,'String'));
betvalue = str2double(get(handles.betSizeEditText,'String'));
standOnSoft17 = get(handles.soft17Checkbox,'Value');
numhandsplayed = 0;
plotablestakes = zeros(1,100);
plotablehandsplayed = zeros(1,100);


% Create stakes
stakes=zeros(1,numplayers);
bets=zeros(2,numplayers);

for i=1:numplayers
    stakes(i)=initialstake;
    bets(1,i)=betvalue;
end

% Simulate the hands

while stakes(1)>0
    switch get(handles.strategyButtonGroup,'SelectedObject') % choose strategy
        case handles.mimicDealerRadio % mimic dealer
            stakes = playMimicDealerHand(numplayers,numdecks,stakes,bets,standOnSoft17);
            strategy = 1;
        case handles.simpleStrategyRadio % simple strategy
            stakes = playSimpleStrategyHand(numplayers,numdecks,stakes,bets,standOnSoft17);
            strategy = 2;
        case handles.basicStrategyRadio % basic strategy
            stakes = playBasicStrategyHand(numplayers,numdecks,stakes,bets,standOnSoft17);
            strategy = 3;
    end
    disp(num2str(stakes(1)))
    
    numhandsplayed=numhandsplayed+1;
    plotablestakes(numhandsplayed)=stakes(1);
    plotablehandsplayed(numhandsplayed)=numhandsplayed;
    
    
    % plot the stake vs. hands played
    plot(handles.plotAxes,plotablehandsplayed(1:numhandsplayed),plotablestakes(1:numhandsplayed))
    axis(handles.plotAxes, [0,numhandsplayed,0,max(plotablestakes)])
    xlabel(handles.plotAxes, 'Number of Hands Played')
    ylabel(handles.plotAxes, 'Stake Value')
    drawnow
    
    
    set(handles.totalHandsText,'String',numhandsplayed)
    set(handles.peakStakeText,'String',max(plotablestakes))
    
end

disp([num2str(numhandsplayed) ' hands played'])
simulations = str2double(get(handles.totalSimulationsText,'String'))+1;
set(handles.totalSimulationsText,'String',simulations)

% add data to spreadsheet

row = str2double(get(handles.totalSimulationsText,'String'));

spreadsheetdata=get(handles.dataTable,'Data');

spreadsheetdata(row, 1) = strategy;
spreadsheetdata(row, 2) = numhandsplayed;

set(handles.dataTable,'Data',spreadsheetdata)

% --- Executes on button press in clearDataButton.
function clearDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% takes the current simulation data and put it in the spreadsheet to be
% graphed later

initialization = zeros(1,2);
set(handles.dataTable,'Data',initialization);
set(handles.totalSimulationsText,'String',0);

% --- Executes on button press in graphDataButton.
function graphDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to graphDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

numhandsplayed = str2double(get(handles.totalHandsText,'String'));
plot(handles.plotAxes,plotablehandsplayed(1:numhandsplayed),plotablestakes(1:numhandsplayed))
axis(handles.plotAxes, [0,numhandsplayed,0,max(plotablestakes)])

% --- Executes on button press in graphSpreadsheetButton.
function graphSpreadsheetButton_Callback(hObject, eventdata, handles)
% hObject    handle to graphSpreadsheetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

spreadsheetdata=get(handles.dataTable,'Data');
maximum = max(spreadsheetdata);

plot(handles.plotAxes,spreadsheetdata(:,1),spreadsheetdata(:,2),'o')
axis(handles.plotAxes,[0,4 0,maximum(2)+50])

xlabel(handles.plotAxes,'Strategy:  1 = Mimic Dealer 2 = Simple Strategy 3 = Basic Strategy')
ylabel(handles.plotAxes,'Longevity (hands played)')

% --- Executes on button press in switchToHumanButton.
function switchToHumanButton_Callback(hObject, eventdata, handles)
% hObject    handle to switchToHumanButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
