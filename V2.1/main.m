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
% Depth-First Search Graph
% [depth, realTime, path] = DFS_Graph(startNode);
%%
% Depth-First Search
% [depth, realTime, path] = DFS(startNode);
%%
% Breadth-First Search Graph
% [depth, realTime, path] = BFS_Graph(startNode);
%%
% Breadth-First Search 
% [depth, realTime, path] = BFS(startNode);
%%
% Iterative-Deepening Search
% [depth, realTime, path] = IDS_Graph(startNode);
%%
% A-Star Search
% [depth, realTime, path] = AStar(startNode);
%%
% tic
% closList=startNode;
% closList(1)=[];
% openList=startNode;
% 
% while ~isempty(openList)
%     currIndx=1;
%     currNode=openList(currIndx);
%     
%     % find the lowest FCost node in open list and set currNode as it.
%     for i=1:length(openList)
%         if openList(i).FCost<currNode.FCost
%             currIndx=i;
%             currNode=openList(currIndx);
%         end
%     end
% 
%     % show the process 
%     currFCost=currNode.FCost;
%     currGCost=currNode.GCost;
%     currState=currNode.State;
%     currFCost
%     currGCost
%     currState
%     
%     % Estimate if get the goalNode
%     if (currNode.State(2,2)==1 && ...
%             currNode.State(3,2)==2 && ...
%             currNode.State(4,2)==3 && ...
%             currNode.State(4,4)==4)
%         path=backtrack(currNode); % backtrack the path of solution
%         depth=currNode.Depth;        
%         realTime=toc;
%         disp('have solution');   
%         return
%     end
%     
%     openList(currIndx)=[];% delete current node
%     closList(length(closList)+1)=currNode;% move current node into close list
%     aroundNode=startNode;
%     aroundNode(1)=[];% create a container to save around nodes.
% %%    
%     flag=1;
%     nodeAfterMoveUp = moveUp(currNode); % node after move up
%     % if the the state after moving is not equal to current node's state
%     if ~isequal(nodeAfterMoveUp.State, currNode.State)
%         for i=1:length(closList)
%             % if the state after moving is equal to one member of close list
%             if isequal(closList(i).State, nodeAfterMoveUp.State)
%                 flag=0;
%                 break;
%             end
%         end
%     end
%     if flag==1
%         nodeAfterMoveUp.Parent = currNode; % parent node is current node           
%         nodeAfterMoveUp.GCost = currNode.GCost + 1; 
%         aroundNode(length(aroundNode)+1)=nodeAfterMoveUp;
%     end
% %%   
%     flag=1;
%     nodeAfterMoveDown = moveDown(currNode); 
%     if ~isequal(nodeAfterMoveDown.State, currNode.State)
%         for i=1:length(closList)
%             if isequal(closList(i).State, nodeAfterMoveDown.State)
%                 flag=0;
%                 break;
%             end
%         end
%     end
%     if flag==1
%         nodeAfterMoveDown.Parent = currNode;           
%         nodeAfterMoveDown.GCost = currNode.GCost + 1; 
%         aroundNode(length(aroundNode)+1)=nodeAfterMoveDown;
%     end
% %%   
%     flag=1;
%     nodeAfterMoveLeft = moveLeft(currNode);
%     if ~isequal(nodeAfterMoveLeft.State, currNode.State)
%         for i=1:length(closList)
%             if isequal(closList(i).State, nodeAfterMoveLeft.State)
%                 flag=0;
%                 break;
%             end
%         end
%     end
%     if flag==1
%         nodeAfterMoveLeft.Parent = currNode;         
%         nodeAfterMoveLeft.GCost = currNode.GCost + 1; 
%         aroundNode(length(aroundNode)+1)=nodeAfterMoveLeft;
%     end
% %%   
%     flag=1;
%     nodeAfterMoveRight = moveRight(currNode);
%     if ~isequal(nodeAfterMoveRight.State, currNode.State)
%         for i=1:length(closList)
%             if isequal(closList(i).State, nodeAfterMoveRight.State)
%                 flag=0;
%                 break;
%             end
%         end
%     end
%     if flag==1
%         nodeAfterMoveRight.Parent = currNode;          
%         nodeAfterMoveRight.GCost = currNode.GCost + 1; 
%         aroundNode(length(aroundNode)+1)=nodeAfterMoveRight;
%     end
% %%    
%     for i=1:length(aroundNode)
%         flag2=1;
%         for j=1:length(openList)
%             if aroundNode(i).State==openList(j).State
%                 flag2=0;
%             end
%         end
%         
%         if flag2==1% if node is not in open list
%             aroundNode(i).FCost=aroundNode(i).GCost+HCost(aroundNode(i).State);
%             openList(length(openList)+1)=aroundNode(i);% add in open list
%         end
%     end % for end
% end % while end




