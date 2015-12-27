classdef node
    properties
        State
        Depth
        Cost
        Move
        Parent
    end
%%    
    methods
        function nodeData=node(puzzle)
            nodeData.State=puzzle;
            nodeData.Depth=0;
        end
        
        function obj = moveUp(obj)
            [row,col]=find(cellfun(@(x) strcmp(x,'G'),obj.State));
            if row>=2
                obj.State{row,col}=obj.State{row-1,col};
                obj.State{row-1,col}='G';
            end
        end 
           
        function obj = moveDown(obj)
            [row,col]=find(cellfun(@(x) strcmp(x,'G'),obj.State));
            if row<=3
                obj.State{row,col}=obj.State{row+1,col};
                obj.State{row+1,col}='G';
            end
        end 
        
        function obj = moveLeft(obj)
            [row,col]=find(cellfun(@(x) strcmp(x,'G'),obj.State));
            if col>=2
                obj.State{row,col}=obj.State{row,col-1};
                obj.State{row,col-1}='G';
            end
        end 
        
        function obj = moveRight(obj)
            [row,col]=find(cellfun(@(x) strcmp(x,'G'),obj.State));
            if col<=3
                obj.State{row,col}=obj.State{row,col+1};
                obj.State{row,col+1}='G';
            end
        end         
    end   
end