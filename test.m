% 
% AGP=[3 3];

% step={[4 4]};
% step=[step,AGP];

% a=step{1}(1);


% node = struct('ID',{1},'Step',{{[4 4]}});

% node(2).ID=2;
% node(2).Step=step;

% % Add step
% if movV==-1
%     step=[step,direction{1}];
% end
% if movV==1
%     step=[step,direction{2}];
% end
% if movH==-1
%     step=[step,direction{3}];
% end
% if movH==1
%     step=[step,direction{4}];
% end
%%

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
node1=node(puz1,1,1,1,1);
%%
node2=moveUp(node1);
%%
node3=moveLeft(node1);
%%
node1=node([],[],[],[],[]);
%%
a{1}=node1;
a{2}=node1;




