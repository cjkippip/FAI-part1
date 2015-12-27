%{
Fundation of AI coursework part 1
Breadth-First Search
%}

function [depth, time, path] = BFS(startNode)
tic
queue=startNode; % stack stores nodes that is unvisited
startNode.Parent=[];
visited={}; % null cell
indx=1;

while indx <= length(queue)
    currNode=queue(indx);
    indx=indx + 1; 
    visited{1,length(visited)+1} = currNode.State; % add visited node
    currDepth=currNode.Depth;
    currState=currNode.State;
    currDepth
    currState
    
%% 
    % Estimate if get the goalNode(don't care about the position of agent)
    % Just care about the positions of 'A', 'B' and 'C'.
    if (currNode.State(2,2)==4 && ...
        currNode.State(3,2)==8 && ...
        currNode.State(4,2)==12)
        path=backtrack(currNode); % backtrack the path of solution
        depth=currNode.Depth;        
        time=toc;
        return           
    else
        nodeMoveUp = moveUp(currNode); % node after move up
        flag=isVisited(nodeMoveUp,visited); % flag of isVisited
        % if the the state after moving is not equal to 
        % current node's state and it is not visited
        if(~isequal(nodeMoveUp.State, currNode.State) && flag==0)
            nodeMoveUp.Parent = currNode; % parent node is current node           
            nodeMoveUp.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeMoveUp;
        end

        nodeMoveDown = moveDown(currNode);
        flag=isVisited(nodeMoveDown,visited);
        if(~isequal(nodeMoveDown.State, currNode.State) && flag==0)
            nodeMoveDown.Parent = currNode;
            nodeMoveDown.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeMoveDown;
        end  

        nodeMoveLeft = moveLeft(currNode);
        flag=isVisited(nodeMoveLeft,visited);
        if(~isequal(nodeMoveLeft.State, currNode.State) && flag==0)
            nodeMoveLeft.Parent = currNode;
            nodeMoveLeft.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeMoveLeft;
        end

        nodeMoveRight = moveRight(currNode);
        flag=isVisited(nodeMoveRight,visited);
        if(~isequal(nodeMoveRight.State, currNode.State) && flag==0)
            nodeMoveRight.Parent = currNode;
            nodeMoveRight.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeMoveRight;
        end
    end
end

%%
if (currNode.State(2,2)~=4 || ...
    currNode.State(3,2)~=8 || ...
    currNode.State(4,2)~=12)
    path=backtrack(currNode);
    depth=currNode.Depth;        
    time=toc;
    disp('no solution');
    return
end  
end