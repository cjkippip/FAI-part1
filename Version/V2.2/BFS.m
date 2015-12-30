%{
Fundation of AI coursework part 1
Breadth-First Search
%}

function [depth, realTime, path] = BFS(startNode)
tic
queue=startNode; % stack stores nodes that is unvisited
startNode.Parent=[];
indx=1;

while indx <= length(queue)
    currNode=queue(indx);
    indx=indx + 1; 
    % show the process
    currDepth=currNode.Depth;
    currState=currNode.State;
    currDepth
    currState
    
%% 
    % Estimate if get the goalNode
    if (currNode.State(2,2)==1 && ...
            currNode.State(3,2)==2 && ...
            currNode.State(4,2)==3 && ...
            currNode.State(4,4)==4)
        path=backtrack(currNode); % backtrack the path of solution
        depth=currNode.Depth;        
        realTime=toc;
        disp('have solution');
        return           
    else
        nodeAfterMoveUp = moveUp(currNode); % node after move up
        % if it can move(CantMove==0) 
        if(nodeAfterMoveUp.CantMove==0)
            nodeAfterMoveUp.Parent = currNode; % parent node is current node           
            nodeAfterMoveUp.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeAfterMoveUp;
        end

        nodeAfterMoveDown = moveDown(currNode);
        if(nodeAfterMoveDown.CantMove==0)
            nodeAfterMoveDown.Parent = currNode;
            nodeAfterMoveDown.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeAfterMoveDown;
        end  

        nodeAfterMoveLeft = moveLeft(currNode);
        if(nodeAfterMoveLeft.CantMove==0)
            nodeAfterMoveLeft.Parent = currNode;
            nodeAfterMoveLeft.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeAfterMoveLeft;
        end

        nodeAfterMoveRight = moveRight(currNode);
        if(nodeAfterMoveRight.CantMove==0)
            nodeAfterMoveRight.Parent = currNode;
            nodeAfterMoveRight.Depth = currNode.Depth + 1;
            queue(length(queue)+1)=nodeAfterMoveRight;
        end
    end
end

%%
if (currNode.State(2,2)~=1 || ...
    currNode.State(3,2)~=2 || ...
    currNode.State(4,2)~=3 || ...
    currNode.State(4,4)==4)
    path=backtrack(currNode);
    depth=currNode.Depth;        
    realTime=toc;
    disp('no solution');
    return
end  
end