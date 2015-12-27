function [movV,movH]=randMove(AGP1,AGP2)
movV=0;
movH=0;

% random move
VH=rand*2-1;
randV=rand*2-1;
randH=rand*2-1;
if  VH>=0
    if randV>=0
        movV=1;
    else
        movV=-1;
    end
else
    if randH>=0
        movH=1;
    else
        movH=-1;
    end
end

% can not out of the boundary. If out, go opposite direction.
if AGP1==1 && movV==-1
    movV=1;
end
if AGP1==4 && movV==1
    movV=-1;
end
if AGP2==1 && movH==-1
    movH=1;
end
if AGP2==4 && movH==1
    movH=-1;
end

end




    