
%w=[0 1 1 1;1 0 0 0;1 0 0 1;1 1 1 0];
w=[0 1 0 1 0 0 0; 
    1 0 1 0 0 0 0;
    0 1 0 1 0 0 0;
    1 0 1 0 1 0 1;
    0 0 0 1 0 1 0;
    0 0 0 0 1 0 1;
    0 0 0 1 0 1 0];

visited=[];
i=1;
j=7;
leng=3;
totalV=7;
pc = FindPaths(i,j,leng,visited,totalV,w)