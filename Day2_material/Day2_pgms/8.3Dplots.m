clc;
clear all;
close all;

% Name of the company: Think Soft Research;
% Project Name:3D plot;
%  Date: Feb 8, 2019
% Time: 1:40PM


t = 0.01:.01:20*pi;
x=cos(t);
y=sin(t);
z=t.^3;
plot3(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
