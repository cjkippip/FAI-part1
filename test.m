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
node1=node(puz1);
%%
node2=moveDown(node1);
%%
if isempty(node1.Parent)
    disp('sssss');
end











