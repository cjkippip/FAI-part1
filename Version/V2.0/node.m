classdef node
    properties
        State
        Depth
        FCost
        GCost
        Move
        Parent
    end
%%    
    methods
        function nodeData=node(state)
            nodeData.State=state;
            nodeData.Depth=0;
            nodeData.FCost=0;
            nodeData.GCost=0;
        end
        
        function obj = moveUp(obj)
            [row,col]=find(obj.State==4);
            if row>=2
                obj.State(row,col)=obj.State(row-1,col);
                obj.State(row-1,col)=4;
            end
        end 
           
        function obj = moveDown(obj)
            [row,col]=find(obj.State==4);
            if row<=3
                obj.State(row,col)=obj.State(row+1,col);
                obj.State(row+1,col)=4;
            end
        end 
        
        function obj = moveLeft(obj)
            [row,col]=find(obj.State==4);
            if col>=2
                obj.State(row,col)=obj.State(row,col-1);      
                obj.State(row,col-1)=4;
            end
        end 
        
        function obj = moveRight(obj)
            [row,col]=find(obj.State==4);
            if col<=3
                obj.State(row,col)=obj.State(row,col+1);    
                obj.State(row,col+1)=4;
            end
        end         
    end   
end