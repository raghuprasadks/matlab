clc;
clear all;
close all;

% Name of the company: Think Soft Research;
% Project Name: 3D mesh plot;
%  Date: Feb 8, 2019
% Time: 2:00PM

x = -2:.2:2;
y= -2:.2:2;

[x,y]= meshgrid(x,y);
z=exp(-x.^2-y.^2)
mesh(z)
xlabel('x');
ylabel('y');
zlabel('z');
