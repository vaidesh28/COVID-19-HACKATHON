%% Covid-19 Hackathon - TIL'yn

%% Initialization
clear ; close all; clc

%% ==================== Part 1: Assessment ====================
% Assessment.m
fprintf('Running Video ... \n');
fprintf('Assessment: \n');
Assessment()

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =================== Part 2: Attendancepopup  ===================
p1 = [ones(m, 1), data(:,9:18)]; % Add a popup to 9:18
p2 = [ones(m, 2), data(:,9:23)]; % Add a popup to 9:23

p = (p1,p2);

fprintf('\nTesting the Attendancepopup ...\n')
% compute and display popup
J = Attendancepopup(p1, p2, [1]);
fprintf('With p1 = [0 ; 0]\nAttendancepopup = %f\n', J);
fprintf('Expected popup time (approx) 9:18\n');

% further testing of the Attendancepopup
J = additionofpopup(p1, p2, [2]);
fprintf('\nWith p1 = [1 ; 1]\nAttendancepopup = %f\n', J);
fprintf('Expected popup time (approx) 9:23\n');
fprintf('Program paused. Press enter to continue.\n');
pause;
fprintf('\nRunning p = Attendancepopup.jpg ...\n')