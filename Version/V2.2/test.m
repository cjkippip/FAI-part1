visited=cell(1,1);
%%
visited{1,1}=puz1;
visited{1,2}=puz2;
visited{1,3}=puz2;
%%
for i=1:length(visited)
    if ~isequal(puz1,visited{1,i})
        disp('sssss');
    end
end
%%
visited={};
%%
length(visited)
%%
N=4;
% Initial state
puz1=cell(N,N);
puz1(:,:)={' '};
puz1(4,4)={'G'};
puz1(4,1)={'A'};
puz1(4,2)={'B'};
puz1(4,3)={'C'};
startNode=node(puz1);
%%
stack=startNode;
stack_index = 1;

%%
AA = stack(1);
%%
stack_index = stack_index - 1;
%%
visited{1,length(visited)+1} = AA.state;
%%
stack(2) = startNode;
%%
startNode=node(startState);
%%
node2=moveUp(startNode);
%%
if isempty(node1.Parent)
    disp('sssss');
end
%%
tile={' ',' ',' ','A',...
    ' ',' ',' ','B',...
    ' ',' ',' ','C',...
    ' ',' ',' ','G'};
%%
state1=ones(N,N);
for i=1:N*N
    state1(i)=i;
end
%%
state2=state1;
%%
[row,col]=find(state1==4);
%%
visited={};
%%
node2=moveUp(startNode);
%%
visited{1,length(visited)+1} = startState;
%%
visited{1,length(visited)+1} = node2.State;
%%
flag=isVisited(startNode,visited);
%%
if 1~=2
    disp('sssss');
    disp('sssss');
end
%%
openList=[];
openListLength=length(openList);
%%
openList=startNode;
%%
openList(length(openList) + 1) = startNode;
%%
closList=startNode;
%%
closList(1)=[];
%%
closList(length(closList)+1)=startNode;
%%
showPath(path);
%%
A1=[0 0 0 0;0 1 0 0;0 2 0 0;0 3 0 4];
A2=sparse(A1);
B1=[0 0 0 0;0 1 0 0;0 2 0 4;0 3 0 0];
B2=sparse(B1);
%%
if ~isequal(A2,B2)
    disp('sssss');
end

