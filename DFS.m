%{
Fundation of AI coursework part 1
Depth-First Search
%}
function [depth, time, path] = DFS(start_node)

tic
visited={};
stack=start_node;
stack_index = 1;

while stack_index > 0
    node = stack(stack_index);
    stack_index = stack_index - 1;
    visited{1,length(visited)+1} = node.State;

    if isequal(node.State{2,2},'A')&&...
        isequal(node.State{3,2},'B')&&isequal(node.State{4,2},'C')
        path=reconstruct(node);
        depth=node.Depth;        
        time = toc;
        return
    elseif(node.Depth<=14)
        
        nodeMoveUp = moveUp(node);
        flag=isVisisted(nodeMoveUp,visited);
        if(~isequal(nodeMoveUp.State, node.State) && flag==0)
            nodeMoveUp.Parent = node;            
            nodeMoveUp.Depth = node.Depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveUp;
            currDepth=nodeMoveUp.Depth-1;
            nodeMoveUp.State
            currDepth
        end

        nodeMoveDown = moveDown(node);
        flag=isVisisted(nodeMoveDown,visited);
        if(~isequal(nodeMoveDown.State, node.State) && flag==0)
            nodeMoveDown.Parent = node;
            nodeMoveDown.Depth = node.Depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveDown;
            currDepth=nodeMoveDown.Depth-1;
            nodeMoveDown.State
            currDepth
        end  

        nodeMoveLeft = moveLeft(node);
        flag=isVisisted(nodeMoveLeft,visited);
        if(~isequal(nodeMoveLeft.State, node.State) && flag==0)
            nodeMoveLeft.Parent = node;
            nodeMoveLeft.Depth = node.Depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveLeft;
            currDepth=nodeMoveLeft.Depth-1;
            nodeMoveLeft.State
            currDepth
        end

        nodeMoveRight = moveRight(node);
        flag=isVisisted(nodeMoveRight,visited);
        if(~isequal(nodeMoveRight.State, node.State) && flag==0)
            nodeMoveRight.Parent = node;
            nodeMoveRight.Depth = node.Depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveRight;
            currDepth=nodeMoveRight.Depth-1;
            nodeMoveRight.State
            currDepth
        end

    end
end
    
end




