function cost=HCost2(state)
%{ 
Heuristic cost function. 
%}
cost=0;
if state(2,2)~=1
    cost=cost+1;
end

if state(3,2)~=2
    cost=cost+1;
end

if state(4,2)~=3
    cost=cost+1;
end

if state(4,4)~=4
    cost=cost+1;
end

end