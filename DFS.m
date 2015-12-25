%{
Fundation of AI coursework part 1
Depth-First Search
%}
function [depth, time, path] = DFS(startNode)

tic
visited={};% null cell
stack=startNode;
indx=1;

while indx > 0
    node=stack(indx);
    indx=indx - 1;
    visited{1,length(visited)+1} = node.State;

    % Estimate if get the goalNode(don't care about the position of agent)
    if isequal(node.State{2,2},'A') && ...
        isequal(node.State{3,2},'B') && isequal(node.State{4,2},'C')
        path=reconstruct(node);
        depth=node.Depth;        
        time=toc;
        return
    elseif(node.Depth<=14)
        
        nodeMoveUp = moveUp(node);
        flag=isVisisted(nodeMoveUp,visited);
        if(~isequal(nodeMoveUp.State, node.State) && flag==0)
            nodeMoveUp.Parent = node;            
            nodeMoveUp.Depth = node.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveUp;
            nodeMoveUp.Depth
            nodeMoveUp.State           
        end

        nodeMoveDown = moveDown(node);
        flag=isVisisted(nodeMoveDown,visited);
        if(~isequal(nodeMoveDown.State, node.State) && flag==0)
            nodeMoveDown.Parent = node;
            nodeMoveDown.Depth = node.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveDown;
            nodeMoveDown.Depth;
            nodeMoveDown.State          
        end  

        nodeMoveLeft = moveLeft(node);
        flag=isVisisted(nodeMoveLeft,visited);
        if(~isequal(nodeMoveLeft.State, node.State) && flag==0)
            nodeMoveLeft.Parent = node;
            nodeMoveLeft.Depth = node.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveLeft;
            nodeMoveLeft.Depth
            nodeMoveLeft.State
        end

        nodeMoveRight = moveRight(node);
        flag=isVisisted(nodeMoveRight,visited);
        if(~isequal(nodeMoveRight.State, node.State) && flag==0)
            nodeMoveRight.Parent = node;
            nodeMoveRight.Depth = node.Depth + 1;
            indx = indx + 1;
            stack(indx) = nodeMoveRight;
            nodeMoveRight.Depth
            nodeMoveRight.State
        end

    end
end
    
end




