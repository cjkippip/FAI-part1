function path = backtrack(node)
    i = 1;  
    path(i) = node;
    while ~isempty(node.Parent)
        node = node.Parent;
        i = i + 1;
        path(i) = node;
    end
end