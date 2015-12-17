function path = reconstruct(node)
    path(1) = node;
    i = 2;
    
    while ~isempty(node.parent)
        node = node.parent;
        path(i) = node;
        i = i + 1;
    end
end