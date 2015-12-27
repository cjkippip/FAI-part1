%{
Fundation of AI coursework part 1
Depth-First Search without considering visited nodes
1.with depth limitation   
2.no depth limitation
%}

function [depth, time, path] = DFS(startNode)
tic
stack=startNode; % stack stores nodes that is unvisited
indx=1; % index of stack

while indx > 0
    currNode=stack(indx);
    indx=indx - 1; % remove visited node
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
        
%     elseif(currNode.Depth<=14) % 1.with depth limitation      
    else % 2.no depth limitation    
        
        rnd=randperm(4);   
        for i=1:4
            switch(rnd(i))
                case(1)
                    nodeMoveUp = moveUp(currNode); % node after move up
                    % if the the state after moving is not equal to 
                    % current node's state and it is not visited
                    if(~isequal(nodeMoveUp.State, currNode.State))
                        nodeMoveUp.Parent = currNode; % parent node is current node           
                        nodeMoveUp.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeMoveUp; % push in stack            
                    end

                case(2)
                    nodeMoveDown = moveDown(currNode);
                    if(~isequal(nodeMoveDown.State, currNode.State))
                        nodeMoveDown.Parent = currNode;
                        nodeMoveDown.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeMoveDown;        
                    end  

                case(3)
                    nodeMoveLeft = moveLeft(currNode);
                    if(~isequal(nodeMoveLeft.State, currNode.State))
                        nodeMoveLeft.Parent = currNode;
                        nodeMoveLeft.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeMoveLeft;
                    end

                case(4)
                    nodeMoveRight = moveRight(currNode);
                    if(~isequal(nodeMoveRight.State, currNode.State))
                        nodeMoveRight.Parent = currNode;
                        nodeMoveRight.Depth = currNode.Depth + 1;
                        indx = indx + 1;
                        stack(indx) = nodeMoveRight;
                    end
            end % switch end
        end % for and
    end % if end
end % while end

%%
if (currNode.State(2,2)~=4 || ...
    currNode.State(3,2)~=8 || ...
    currNode.State(4,2)~=12)
    path=backtrack(currNode);
    depth=currNode.Depth;        
    time=toc;
    disp('no solution');
end
end