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
        function nodeData=node(state)
            nodeData.State=state;
            nodeData.Depth=0;
        end
        
        function obj = moveUp(obj)
            [row,col]=find(obj.State==16);
            if row>=2
                obj.State(row,col)=obj.State(row-1,col);
                obj.State(row-1,col)=16;
            end
        end 
           
        function obj = moveDown(obj)
            [row,col]=find(obj.State==16);
            if row<=3
                obj.State(row,col)=obj.State(row+1,col);
                obj.State(row+1,col)=16;
            end
        end 
        
        function obj = moveLeft(obj)
            [row,col]=find(obj.State==16);
            if col>=2
                obj.State(row,col)=obj.State(row,col-1);      
                obj.State(row,col-1)=16;
            end
        end 
        
        function obj = moveRight(obj)
            [row,col]=find(obj.State==16);
            if col<=3
                obj.State(row,col)=obj.State(row,col+1);    
                obj.State(row,col+1)=16;
            end
        end         
    end   
end