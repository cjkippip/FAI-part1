%{
Fundation of AI coursework part 1
%}
clc
clear
N=4;
% tile(1)='A',tile(2)='B',tile(3)='C',tile(4)='G'
tile={'A','B','C','G'};
% start state
% 1=A, 2=B, 3=C, 4=G(Agent), 0=Blank
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

%{
Different search methods. Every first line is comment.
Every second line is code. Uncomment the code line to execute.
%}
%%
% Depth-First Search considering visited nodes
% [depth, realTime, path] = DFSvisited(startNode);
%%
% Depth-First Search without considering visited nodes
% [depth, realTime, path] = DFS(startNode);
%%
% Breadth-First Search 
% [depth, realTime, path] = BFS(startNode);
%%
% Iterative-Deepening Search
% [depth, realTime, path] = IDS(startNode);
%%
% A-Star Search
[depth, realTime, path] = AStar(startNode);
%%





