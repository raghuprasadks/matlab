clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research & Information Technologies;
% Program Name:Loop statements ;
% Date: Feb 8, 2019;
% Time: 12:55PM;



n = 5; A = eye(n)
for j=2:n
for i=1:j-1
A(i,j)=i/j
A(j,i)=i/j
end
end

x = 1
while x <= 10
x = 3*x
end