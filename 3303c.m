%% Instrument Configuration and Control
%% Communicating with instrument object, obj1.

% Turn Channels on and off
fprintf(obj1, 'OUTPut CH1,ON');
fprintf(obj1, 'OUTPut CH1,OFF');

% Select the channel that will be operated
fprintf(obj1, 'INSTRUMENT CH1');
% Query the current operating channel
fprintf(obj1, 'INSTRUMENT?');
fscanf(obj1)

% Select the Operation Mode,
% 0: Independant, 1: Series, 2: Parallel
fprintf(obj1, 'OUTPut:TRACK 1');

% Set Voltage to 13.37 V
fprintf(obj1, 'CH1:VOLTage 13.37');

% Set Current limit to 2.5 A
fprintf(obj1, 'CH2:CURRent 2.5');

% Read Set Voltage
fprintf(obj1, 'CH1:VOLTage?');
U1 = str2double(fscanf(obj1))

% Read Set Current
fprintf(obj1, 'CH1:CURRent?');
I1 = str2double(fscanf(obj1))

% Measure actual Voltage
fprintf(obj1, 'MEAsure:VOLTage? CH1');
U1 = str2double(fscanf(obj1))

% Measure actual Current
fprintf(obj1, 'MEAsure:CURRent? CH1');
I1 = str2double(fscanf(obj1))
