classdef node
%{
Class node
Reference:https://github.com/Icarurs/matlab-8-puzzle/blob/master/puzzle.m
%}
    properties
        State
        Depth
        FCost
        GCost
        Direction
        Parent
        CantMove
    end
%%    
    methods
        function nodeData=node(state)
            nodeData.State=state;
            nodeData.Depth=0;
            nodeData.FCost=0;
            nodeData.GCost=0;
            nodeData.CantMove=0;
        end
             
        function obj = moveUp(obj)
            [row,col]=find(obj.State==4);
            if row>=2 % in this condition, node can move
                obj.State(row,col)=obj.State(row-1,col);
                obj.State(row-1,col)=4;
            else % out of boundary, CantMove=1
                obj.CantMove=1;
            end
        end 
           
        function obj = moveDown(obj)
            [row,col]=find(obj.State==4);
            if row<=3
                obj.State(row,col)=obj.State(row+1,col);
                obj.State(row+1,col)=4;
            else
                obj.CantMove=1;
            end
        end 
        
        function obj = moveLeft(obj)
            [row,col]=find(obj.State==4);
            if col>=2
                obj.State(row,col)=obj.State(row,col-1);      
                obj.State(row,col-1)=4;
            else
                obj.CantMove=1;
            end
        end 
        
        function obj = moveRight(obj)
            [row,col]=find(obj.State==4);
            if col<=3
                obj.State(row,col)=obj.State(row,col+1);    
                obj.State(row,col+1)=4;
            else
                obj.CantMove=1;
            end
        end         
    end   
end
