clc;
clear all;
close all;

% Name of the company: Think Soft Research;
% Project Name:Straight line;
%  Date: Feb 8, 2019
% Time: 1:30PM

x=-10:1:10;
% x=input('enter the inputs');
m=input('enter the value of m=');
c=input('enter the value of c=');
Y=(m*x+c);
disp('straight line of y=');
disp(Y);
% subplot(2,1,1);
plot(Y);
xlabel('values of x');
ylabel('value of y');
title('y=mx+c');