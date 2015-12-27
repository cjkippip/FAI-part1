%{
Fundation of AI coursework part 1
Depth-First Search considering visited nodes
1.with depth limitation   
2.no depth limitation
%}
function [depth, time, path] = DFSvisited(startNode)

tic
visited={}; % null cell
stack=startNode; % stack stores nodes that is unvisited
indx=1; % index of stack

while indx > 0
    currNode=stack(indx);
    indx=indx - 1; % remove visited node
    visited{1,length(visited)+1} = currNode.State; % add visited node
    currDepth=currNode.Depth;
    currState=currNode.State;
    currDepth
    currState
    
%% 
    % Estimate if get the goalNode(don't care about the position of agent)
    % Just care about the positions of 'A', 'B' and 'C'.
    if (currNode.State(2,2)==1 && ...
        currNode.State(3,2)==2 && ...
        currNode.State(4,2)==3)
        path=backtrack(currNode); % backtrack the path of solution
        depth=currNode.Depth;        
        time=toc;
        disp('have solution');
        return  
        
    elseif(currNode.Depth<=14) % 1.with depth limitation      
%     else % 2.no depth limitation

        nodeMoveUp = moveUp(currNode); % node after move up
        flag=isVisited(nodeMoveUp,visited); % flag of isVisited
        % if the the state after moving is not equal to 
        % current node's state and it is not visited
        if(~isequal(nodeMoveUp.State, currNode.State) && flag==0)
            nodeMoveUp.Parent = currNode; % parent node is current node           
            nodeMoveUp.Depth = currNode.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveUp; % push in stack            
        end

        nodeMoveDown = moveDown(currNode);
        flag=isVisited(nodeMoveDown,visited);
        if(~isequal(nodeMoveDown.State, currNode.State) && flag==0)
            nodeMoveDown.Parent = currNode;
            nodeMoveDown.Depth = currNode.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveDown;        
        end  

        nodeMoveLeft = moveLeft(currNode);
        flag=isVisited(nodeMoveLeft,visited);
        if(~isequal(nodeMoveLeft.State, currNode.State) && flag==0)
            nodeMoveLeft.Parent = currNode;
            nodeMoveLeft.Depth = currNode.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveLeft;
        end

        nodeMoveRight = moveRight(currNode);
        flag=isVisited(nodeMoveRight,visited);
        if(~isequal(nodeMoveRight.State, currNode.State) && flag==0)
            nodeMoveRight.Parent = currNode;
            nodeMoveRight.Depth = currNode.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveRight;
        end
    end
end

%%
if (currNode.State(2,2)~=1 || ...
    currNode.State(3,2)~=2 || ...
    currNode.State(4,2)~=3)
    path=backtrack(currNode);
    depth=currNode.Depth;        
    time=toc;
    disp('no solution');
end    
end




