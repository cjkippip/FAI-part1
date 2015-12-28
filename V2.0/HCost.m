function cost=HCost(state)
%{ 
Heuristic cost function, using Manhattan Distance.
%}

% find the distance between current 1 and the goal 1.
[row1,col1]=find(state==1);
rowDiff1=abs(row1-2);
colDiff1=abs(col1-2);
diff1=rowDiff1+colDiff1;
% find the distance between current 2 and the goal 2.
[row2,col2]=find(state==2);
rowDiff2=abs(row2-3);
colDiff2=abs(col2-2);
diff2=rowDiff2+colDiff2;
% find the distance between current 3 and the goal 3.
[row3,col3]=find(state==3);
rowDiff3=abs(row3-4);
colDiff3=abs(col3-2);
diff3=rowDiff3+colDiff3;
% summary
cost=diff1+diff2+diff3;
end