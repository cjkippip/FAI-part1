function flag=isVisisted(nodeMove,visited)

flag=0;
for i=1:length(visited)
    if isequal(nodeMove.State,visited{1,i})
        flag=flag+1;
    end
end

end