% Write the transition matrix for the webpages shown below and arrange the webpages in the order of their importance (refer to the pic in the readme file)

%%
clc
clear
%matrix
a=[0 1/3 1 1/3 0; 1/2 0 0 0 0; 0 1/3 0 1/3 1;1/2 0 0 0 0;0 1/3 0 1/3 0]
%eigen values and vectors
[v,d]=eigs(a)
% real eig value 1... take that column
u = v(:,1)
%normalize the vector and disp pagerank
x=u/sum(u)
