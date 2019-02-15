clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research & Information Technologies;
% Program Name:Conditional statements ;
% Date: Feb 8, 2019;
% Time: 12:45PM;


% if ... end
% if ... else ... end

% if expression
% statements
% end


a = input('Enter the value of a');
b = input('Enter the value of b');
c = a - b;

if c < 0
disp('Warning: Value is negative');
end

if c < 0
disp('Warning: discriminant is negative, roots are imaginary');
else
disp('Roots are real, but may be repeated');
end

if c < 0
disp('Warning: discriminant is negative, roots are imaginary');
elseif c == 0
disp('Discriminant is zero, roots are repeated')
else
disp('Roots are real')
end

