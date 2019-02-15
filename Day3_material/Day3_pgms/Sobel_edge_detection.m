clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research & Information Technologies;
% Program Name: sobel Edge Detecetion;
% Date: Feb , 2019;
% Time: 10:30AM;

I = imread('coins.png');
imshow(I)
BW1 = edge(I,'sobel');
figure
imshow(BW1);


