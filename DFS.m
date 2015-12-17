%{
Fundation of AI coursework part 1
Depth-First Search
%}
function [depth, time, space, path] = DFS(start_node, goal_node)
    tic
    visited=[];
    stack=start_node;
    stack_index = 1;
    while stack_index > 0
        node = stack(stack_index);
        stack_index = stack_index - 1;
        visited(length(visited) + 1) = node.state;
        if isequal(node.state{2,2},'A')&&...
            isequal(node.state{3,2},'B')&&isequal(node.state{4,2},'C')
            reconstruct_path(node);
            time = toc;
            return
        elseif(node.depth<=80)
            
            nodeMoveUp = moveUp(node);
            if(nodeMoveUp.state ~= node.state || ~ismember(nodeMoveUp.state, visited))
                nodeMoveUp.parent = node;            
                nodeMoveUp.depth = node.depth + 1;
                stack_index = stack_index + 1;
                stack(stack_index) = nodeMoveUp;
            end
            
            nodeMoveDown = moveDown(node);
            if(nodeMoveDown.state ~= node.state || ~ismember(nodeMoveDown.state, visited))
                nodeMoveDown.parent = node;
                nodeMoveDown.depth = node.depth + 1;
                stack_index = stack_index + 1;
                stack(stack_index) = nodeMoveDown;
            end  
            
            nodeMoveLeft = moveLeft(node);
            if(nodeMoveLeft.state ~= node.state || ~ismember(nodeMoveLeft.state, visited))
                nodeMoveLeft.parent = node;
                nodeMoveLeft.depth = node.depth + 1;
                stack_index = stack_index + 1;
                stack(stack_index) = nodeMoveLeft;
            end
            
            nodeMoveRight = moveRight(node);
            if(nodeMoveRight.state ~= node.state || ~ismember(nodeMoveRight.state, visited))
                nodeMoveRight.parent = node;
                nodeMoveRight.depth = node.depth + 1;
                stack_index = stack_index + 1;
                stack(stack_index) = nodeMoveRight;
            end
        end
    end
end




