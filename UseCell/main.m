%{
Fundation of AI coursework part 1
%}
clc
clear
N=4;
% Initial state
puz1=cell(N,N);
puz1(:,:)={' '};
puz1(4,4)={'G'};
puz1(4,1)={'A'};
puz1(4,2)={'B'};
puz1(4,3)={'C'};
startNode=node(puz1);

% Goal state
puz2=cell(N,N);
puz2(:,:)={' '};
puz2(4,4)={'G'};
puz2(2,2)={'A'};
puz2(3,2)={'B'};
puz2(4,2)={'C'};
goalNode=node(puz2);

%%
% Depth-First Search considering visited nodes
[depth, time, path] = DFS(startNode);
%%


