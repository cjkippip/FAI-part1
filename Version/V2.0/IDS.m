%{
Fundation of AI coursework part 1
Iterative-Deepening Search
%}

function [depth, realTime, path] = IDS(startNode)
globalStartNode=startNode;
tic

for depthLimit=1:16
    visited={}; % null cell
    stack=globalStartNode; % stack stores nodes that is unvisited
    indx=length(stack); % index of stack
    unexpanded_nodes=stack;
    unexpanded_nodes_indx=1;

    while indx > 0
        currNode=stack(indx);
        indx=indx - 1; % remove visited node
        visited{1,length(visited)+1} = currNode.State; % add visited node
        % show the process
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
            realTime=toc;
            disp('have solution');
            return  
            
        elseif(currNode.Depth<=depthLimit) % 1.with depth limitation      
    %     else % 2.no depth limitation

            nodeAfterMoveUp = moveUp(currNode); % node after move up
            flag=isVisited(nodeAfterMoveUp,visited); % flag of isVisited
            % if the the state after moving is not equal to 
            % current node's state and it is not visited
            if(~isequal(nodeAfterMoveUp.State, currNode.State) && flag==0)
                nodeAfterMoveUp.Parent = currNode; % parent node is current node           
                nodeAfterMoveUp.Depth = currNode.Depth + 1;
                indx = indx + 1;
                stack(indx) = nodeAfterMoveUp; % push in stack            
            end

            nodeAfterMoveDown = moveDown(currNode);
            flag=isVisited(nodeAfterMoveDown,visited);
            if(~isequal(nodeAfterMoveDown.State, currNode.State) && flag==0)
                nodeAfterMoveDown.Parent = currNode;
                nodeAfterMoveDown.Depth = currNode.Depth + 1;
                indx = indx + 1;
                stack(indx) = nodeAfterMoveDown;        
            end  

            nodeAfterMoveLeft = moveLeft(currNode);
            flag=isVisited(nodeAfterMoveLeft,visited);
            if(~isequal(nodeAfterMoveLeft.State, currNode.State) && flag==0)
                nodeAfterMoveLeft.Parent = currNode;
                nodeAfterMoveLeft.Depth = currNode.Depth + 1;
                indx = indx + 1;
                stack(indx) = nodeAfterMoveLeft;
            end

            nodeAfterMoveRight = moveRight(currNode);
            flag=isVisited(nodeAfterMoveRight,visited);
            if(~isequal(nodeAfterMoveRight.State, currNode.State) && flag==0)
                nodeAfterMoveRight.Parent = currNode;
                nodeAfterMoveRight.Depth = currNode.Depth + 1;
                indx = indx + 1;
                stack(indx) = nodeAfterMoveRight;
            end
        else
            unexpanded_nodes(unexpanded_nodes_indx) = currNode;
            unexpanded_nodes_indx = unexpanded_nodes_indx + 1;            
        end % if end
    end % while end
    globalStartNode=unexpanded_nodes;
end % for end

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
