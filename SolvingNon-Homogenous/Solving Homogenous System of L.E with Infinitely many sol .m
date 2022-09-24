%Write a Matlab Code for a homogenous System of Linear Equations having infinitely many solutions(balancing chemical equation)
% C2H8 + O2 --> CO2 + H2O

% (x1)C2H8 + (x2)O2 --> (x3)CO2 + (x4)H2O
%Carbon: 2x1 = x3 --> 2x1 - x3 =0
%Hydrozen: 8x1 = 2x4 --> 8x1 - 2x4 = 0
%Oxyzen: 2x2 = 2x3+x4 --> 2x2 - 2x3 - x4 = 0
 % sol: 1C2H8 + 4O2 --> 2CO2 + 4H2O 


%%code:
clc
clear
syms x1 x2 x3 x4
eqn1 = 2*x1-x3==0;
eqn2 = 8*x1-2*x4==0;
eqn3 = 2*x2-2*x3-x4==0;
%applying function
sol = solve([eqn1,eqn2,eqn3],[x1,x2,x3,x4],'ReturnCondition',true)
disp('solution is:')
[sol.x1;sol.x2;sol.x3;sol.x4]
