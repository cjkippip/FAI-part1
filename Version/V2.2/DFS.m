%{
Fundation of AI coursework part 1
Depth-First Search 
1.with depth limitation   
2.no depth limitation
%}

function [depth, realTime, path] = DFS(startNode)
tic
stack=startNode; % stack stores nodes that is unvisited
indx=1; % index of stack

while indx > 0
    currNode=stack(indx);
    indx=indx - 1; % remove visited node
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
        
%     elseif(currNode.Depth<=14) % 1.with depth limitation      
    else % 2.no depth limitation    
        
        rnd=randperm(4);   
        for i=1:4
            switch(rnd(i))
                case(1)
                    nodeAfterMoveUp = moveUp(currNode); % node after move up
                    % if it can move(CantMove==0)
                    if(nodeAfterMoveUp.CantMove==0)
                        nodeAfterMoveUp.Parent = currNode; % parent node is current node           
                        nodeAfterMoveUp.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeAfterMoveUp; % push in stack            
                    end

                case(2)
                    nodeAfterMoveDown = moveDown(currNode);
                    if(nodeAfterMoveDown.CantMove==0)
                        nodeAfterMoveDown.Parent = currNode;
                        nodeAfterMoveDown.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeAfterMoveDown;        
                    end  

                case(3)
                    nodeAfterMoveLeft = moveLeft(currNode);
                    if(nodeAfterMoveLeft.CantMove==0)
                        nodeAfterMoveLeft.Parent = currNode;
                        nodeAfterMoveLeft.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeAfterMoveLeft;
                    end

                case(4)
                    nodeAfterMoveRight = moveRight(currNode);
                    if(nodeAfterMoveRight.CantMove==0)
                        nodeAfterMoveRight.Parent = currNode;
                        nodeAfterMoveRight.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeAfterMoveRight;
                    end
            end % switch end
        end % for and
    end % if end
end % while end

%%
if (currNode.State(2,2)~=1 || ...
    currNode.State(3,2)~=2 || ...
    currNode.State(4,2)~=3 || ...
    currNode.State(4,4)==4)
    path=backtrack(currNode);
    depth=currNode.Depth;        
    realTime=toc;
    disp('no solution');
end
end