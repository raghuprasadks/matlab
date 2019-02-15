clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research & Information Technologies;
% Program Name:Plot of Sine wave;
% Date: Jan 31, 2019;
% Time: 12:22PM;

% Linear convolution of two signals

X1 = input('Enter the first sequence');
X2 = input('Enter the second sequence');

y = conv(X2,X2);

disp('Linear convolution of X1 and X2 is y = ');
disp(y);

stem(y);
xlabel('time in index');
ylabel('amplitude');
title('convolution output');

 