%% SOLVING NONHOMOGENOUS EQUATION:
%% Write a MATLAB code for a Non-  system of two linear equation having a unique solution: 3x + 2y = 1 and 2x + 3y = 2

%% code:
clc
clear
%specifying variables
syms x y z
eqn1=3*x+2*y==1;
eqn2=2*x+3*y==2;
%applying function
sol = solve([eqn1,eqn2],[x,y,z],'ReturnCondition',true)
disp('solution is:')
[sol.x;sol.y;sol.z]
