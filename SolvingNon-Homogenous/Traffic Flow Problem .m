% Write a Matlab Code for a non homogenous system of linear equation having infinitely many solutions.(Traffic Flow Problems)

% equations:
% x1-x4 == 160
% x1-x2 == 240
% x3-x4 == 520
% x3-x2== 600
  
  
clc
clear
syms x1 x2 x3 x4
eqn1 = x1-x4 == 160 ;
eqn2 = x1-x2 == 240 ;
eqn3 = x3-x2== 600;
eqn4 = x3-x4 == 520;
%to change eq directly to matrix
[A,B]=equationsToMatrix([eqn1,eqn2,eqn3,eqn4],[x1,x2,x3,x4])
%to find the solution
X=linsolve(A,B)
Y=A\B
%IN THE ABOVE CASE : can come across an error saying solution is not unique and equations are rank deficient


%SOLVING BY USING PARAMETERS:

%% question
clc
clear
syms x1 x2 x3 x4
eqn1 = x1-x4 == 160 ;
eqn2 = x1-x2 == 240 ;
eqn3 = x3-x2== 600;
eqn4 = x3-x4 == 520;
%applying function
sol = solve([eqn1,eqn2,eqn3,eqn4],[x1,x2,x3,x4],'ReturnCondition',true)
disp('solution is:')
[sol.x1;sol.x2;sol.x3;sol.x4]
