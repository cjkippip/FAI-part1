function flag=isVisited(nodeMove,visited)
%{
These function is uesd to estimate whether the node
after moving is visited.
%}
flag=0;
for i=1:length(visited) % loop: every member in visited
    if isequal(nodeMove.State,visited{1,i})
        flag=flag+1; % flag>0 means visited.
        return
    end
end

end