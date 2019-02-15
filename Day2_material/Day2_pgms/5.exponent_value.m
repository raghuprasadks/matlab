clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research;
% Project Name: exponential;
%  Date: Feb 8, 2019
% Time: 1:30PM



X=-2:0.1:2;
% x=input('enter the inputs');
Y=exp(X);
disp('exponent value of  y=');
disp(Y);
% subplot(2,1,1);
plot(X,Y);
xlabel('values of x');
ylabel('value of y');
title('exponential value is y=exp(x)');

