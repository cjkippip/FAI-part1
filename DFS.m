%{
Fundation of AI coursework part 1
Depth-First Search
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




