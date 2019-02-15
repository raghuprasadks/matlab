clc;
clear all; 
close all;

% Name of the company: Think Soft Research 
% Project Name: parabola
% Date: Feb 8, 2019
% Time: 1:25PM


x=-10:1:10
% x=input('enter the inputs=');

Y=(x.^2);
disp('parabola of y=');
disp(Y);

% subplot(2,1,1);
plot(Y);
xlabel('values of x');
ylabel('value of y');
title('parabola Y=X^2');