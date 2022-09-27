%following code is to solve the 2nd part(refer the image 2 under Matrix Application in README file)

%%
clc
clear
%matrix
a=[0 0 0 1/4 1 1/3; 1/3 0 0 0 0 1/3; 1/3 1/4 0 1/4 0 0; 0 1/4 1/2 0 0 0 ;0 1/4 1/2 1/4 0 1/3;1/3 1/4 0 1/4 0 0]
%eigen values and vectors
[v,d]=eigs(a)
% real eig value 1... take that column
u = v(:,1)
%normalize the vector and disp pagerank
x=u/sum(u)
