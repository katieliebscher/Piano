function AIWinCounterFunc(handles,hObject)
AI1Wins=[];
AI2Wins=[];
Ties=[];
persistent AI1Wins
% If statement creates empty turns array if game has just begun
if isempty(AI1Wins)
    AI1Wins=0;
end

save('AI1Wins','AI1Wins');

persistent AI2Wins
% If statement creates empty turns array if game has just begun
if isempty(AI2Wins)
    AI2Wins=0;
end

save('AI2Wins','AI2Wins');

persistent Ties
% If statement creates empty turns array if game has just begun
if isempty(Ties)
    Ties=0;
end

save('Ties','Ties');

