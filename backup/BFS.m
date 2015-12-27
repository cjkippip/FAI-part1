%{
Fundation of AI coursework part 1
Breath-First Search
%}

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

% Show initial state
disp('Initial State:');
puz1
% Show goal state
disp('Goal State:');
puz2
%%

id=1;
step=[4 4];% Record step sequence, length can be changed.
node = struct('ID',{1},'Depth',{1},'Step',{step});  
flag1=0;
flag2=0;
depth=1;

while flag1==1
    while flag2==1     
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
            return;
        end
    %%    
        for i=1:depth-1
            movV=0;% Vertical move
            movH=0;% Horizontal move

            % Move (exchange position)
            puz1{AGP1,AGP2}=puz1{AGP1+movV,AGP2+movH};
            puz1{AGP1+movV,AGP2+movH}='G';
            AGP1=AGP1+movV;
            AGP2=AGP2+movH;

            % add step
            AGP=[AGP1 AGP2];
            step=[step; AGP];

            step(depth,:)=[];
        end
    %%        
        id=id+1;
        node(id).ID=id;
        node(id).Depth=depth;
        node(id).Step=step;
    end
end





