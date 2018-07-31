% Template 
% Tyson Cross 1239448


%{
    Notes and information
%}

clc; clear all; set(0,'ShowHiddenHandles','on'); delete(get(0,'Children'));

% Calculations
% go here...
N = randi(100);
x = [1:10];
y = sin(x);
y1 = cos(x);
y2 = sin(x + N);
y3 = cos(x + N);
y4 = sinc(x);

% Display results
Template_Disp;

% Plot results
Template_Plot;
Template_MultiPlot;