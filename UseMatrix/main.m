%{
Fundation of AI coursework part 1
%}
clc
clear
N=4;
% tile(1)='A',tile(2)='B',tile(3)='C',tile(4)='G'
tile={'A','B','C','G'};
% start state
% 1=A, 2=B, 3=C, 4=Agent(G), 0=Blank
startState=zeros(N,N);
startState(4,1)=1;
startState(4,2)=2;
startState(4,3)=3;
startState(4,4)=4;
startNode=node(startState);
% goal state
goalState=zeros(N,N);
goalState(2,2)=1;
goalState(3,2)=2;
goalState(4,2)=3;
goalState(4,4)=4;
goaltNode=node(goalState);
% show start and goal state
startState
goalState
%%
% Depth-First Search considering visited nodes
[depth, time, path] = DFSvisited(startNode);
%%
% Depth-First Search without considering visited nodes
% [depth, time, path] = DFS(startNode);
%%
% Breadth-First Search 
% [depth, time, path] = BFS(startNode);


