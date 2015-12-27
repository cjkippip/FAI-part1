%{
Fundation of AI coursework part 1
%}
clc
clear
N=4;
% tile(4)='A',tile(8)='B',tile(12)='C',tile(16)='G'
tile={' ',' ',' ','A',...
    ' ',' ',' ','B',...
    ' ',' ',' ','C',...
    ' ',' ',' ','G'};
% start state
startState=ones(N,N);
for i=1:N*N
    startState(i)=i;
end
startNode=node(startState);

%%
% Depth-First Search considering visited nodes
% [depth, time, path] = DFSvisited(startNode);
%%
% Depth-First Search without considering visited nodes
% [depth, time, path] = DFS(startNode);

