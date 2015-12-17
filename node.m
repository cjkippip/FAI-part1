classdef node
    properties
        depth
        state
        cost
        move
        parent
    end
    
    methods
        function nodeData=node(depth,state,cost,move,parent)
            nodeData.depth=depth;
            nodeData.state=state;
            nodeData.cost=cost;
            nodeData.move=move;
            nodeData.parent=parent; 
        end
        
        function obj = moveUp(obj)
            [row,col]=find(cellfun(@(x) strcmp(x,'G'),puz1));
            obj.state{row,col}=obj.state{row-1,col};
            obj.state{row-1,col}='G';
        end 
           
        
    end
end