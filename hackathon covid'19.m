%% COVID-19 CRISIS HACKATHON - REMOTE EDUCATION  - TIL'yn 
%  

%% Initialization
clear ; close all; clc

%% ==================== Part 1: Assessment Question ====================
% Assessment.m
fprintf('Adding video ... \n');
fprintf('Assessment: \n');
Assessment()

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =================== Part 2: Attendancepopup ===================
% Attendancepopup.m
Add1 = [ones(m, 2), data(:,9:18)]; % Add a first popup to video
Add2 = [ones(m, 2), data(:,9:23)]; % Add a second popup to video
% Some attendancepopup setting

fprintf('\nTesting the Attendancepopup ...\n')
% display pop-up
J = Attendancepopup(1,Add1);
fprintf('With Add1 = [0 ; 0]\nAttendancepopup = %f\n', J);
fprintf('Expected attendancepopup (approx) 9:18\n');

% further attendancepop
J = Attendancepopup(2, Add2);
fprintf('\nWith Add2 = [1 ; 1]\nAttendancepopup = %f\n', J);
fprintf('Expected attendancepopup (approx) 9:23\n');

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nRunning video ...\n')