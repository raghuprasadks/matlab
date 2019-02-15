function varargout = plot_with_slider(varargin)
% PLOT_WITH_SLIDER MATLAB code for plot_with_slider.fig
%      PLOT_WITH_SLIDER, by itself, creates a new PLOT_WITH_SLIDER or raises the existing
%      singleton*.
%
%      H = PLOT_WITH_SLIDER returns the handle to a new PLOT_WITH_SLIDER or the handle to
%      the existing singleton*.
%
%      PLOT_WITH_SLIDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOT_WITH_SLIDER.M with the given input arguments.
%
%      PLOT_WITH_SLIDER('Property','Value',...) creates a new PLOT_WITH_SLIDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plot_with_slider_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plot_with_slider_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plot_with_slider

% Last Modified by GUIDE v2.5 05-Sep-2018 10:33:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plot_with_slider_OpeningFcn, ...
                   'gui_OutputFcn',  @plot_with_slider_OutputFcn, ...
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


% --- Executes just before plot_with_slider is made visible.
function plot_with_slider_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plot_with_slider (see VARARGIN)

% Choose default command line output for plot_with_slider
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plot_with_slider wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = plot_with_slider_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function slider_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider_editText as text
%        str2double(get(hObject,'String')) returns contents of slider_editText as a double
sliderValue=get(handles.slider_editText,'String');

sliderValue=str2num(sliderValue);

if(isempty(sliderValue)|| sliderValue < 0 || sliderValue > 100);
    
    set(handles.slider1,'value', 0);
        set(handles.slider_editText,'String','0');
        
else
    set(handles.slider1,'values', sliderValue);
end



% --- Executes during object creation, after setting all properties.
function slider_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderValue = get(handles.slider1,'Value');
 set(handles.slider_editText,'String',num2str(sliderValue));

guidata(hObject,handles);

% plot of exponentional

sliderValue = get(handles.slider1,'Value');
%  set(handles.slider_editText,'String',num2str(sliderValue));
% guidata(hObject,handles);

axes(handles.axes1);

ax =sliderValue;

 x=0:0.1:10;
 ay=ax*exp(-x);

 plot(ay);
 
 title('y=a*exp(-x)');
 xlabel('x samples');
 ylabel('values of y');
 
 guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
