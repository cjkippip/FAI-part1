%{
Fundation of AI coursework part 1
Random search
%}

clc;
clear;

N=4;
% Initial state
puz1=cell(N,N);
puz1(:,:)={' '};
puz1(4,4)={'G'};
puz1(4,1)={'A'};
puz1(4,2)={'B'};
puz1(4,3)={'C'};
% Agent's position
AGP1=4;
AGP2=4;

% Goal state
puz2=cell(N,N);
puz2(:,:)={' '};
puz2(4,4)={'G'};
puz2(2,2)={'A'};
puz2(3,2)={'B'};
puz2(4,2)={'C'};

step=[4 4];% Record step sequence, length can be changed.

% Show initial state
disp('Initial State:');
puz1
% Show goal state
disp('Goal State:');
puz2
%%


while 1
    % If the game is finished
    if isequal(puz1{2,2},'A')&&...
        isequal(puz1{3,2},'B')&&isequal(puz1{4,2},'C')    
        disp('=======================================================');
        % Show current state
        disp('Current State:');
        puz1
        % Show goal state
        disp('Goal State:');
        puz2
        disp('Finished');
        break;
    end
    
    % Random move (function randMove)
    [movV,movH]=randMove(AGP1,AGP2);

    % Move (exchange position)
    puz1{AGP1,AGP2}=puz1{AGP1+movV,AGP2+movH};
    puz1{AGP1+movV,AGP2+movH}='G';
    AGP1=AGP1+movV;
    AGP2=AGP2+movH;
    
    % add step
    AGP=[AGP1 AGP2];
    step=[step; AGP];
      
end


    
    
    








