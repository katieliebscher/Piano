function RandomStrategy(handles,hObject)

pilePosition=15;
AIWinCounterFunc(handles,hObject);
load('AI1Wins');
load('AI2Wins');
PlayerHand(handles,hObject);
pause(0.5);
winRow=0;
winDiagonal=0;
winColumn=0;

while winColumn==0 && winRow==0 && winDiagonal==0 && pilePosition<=103
    
PlayerChoiceF(handles,hObject);
FinalRandomStrategy(handles,hObject);

% pause(0.1);
RestoreHand(handles,hObject);
[winColumn]=WinColumnCheck(handles,hObject);
[winRow]=WinRowCheck(handles,hObject);
[winDiagonal]=WinDiagonalCheck(handles,hObject);

PlayerHand(handles,hObject);
% pause(0.1);
pilePosition=handles.pilePosition.Value;

end


if winRow==1
    load('winner');
    handles.WinnerText.String=([num2str(winner),' is the winner!']);
    if strcmp(winner,'AI1')
        AI1Wins=AI1Wins+1;
        save('AI1Wins','AI1Wins');
    else
        AI2Wins= AI2Wins+1;
        save('AI2Wins','AI2Wins');
    end
elseif winColumn==1
    load('winner');
    handles.WinnerText.String=([num2str(winner),' is the winner!']);
    if strcmp(winner,'AI1')
        AI1Wins=AI1Wins+1;
        save('AI1Wins','AI1Wins');
        
    else
        AI2Wins= AI2Wins+1;
        save('AI2Wins','AI2Wins');
    end
elseif winDiagonal==1
    load('winner');
    handles.WinnerText.String=([num2str(winner),' is the winner!']);
    if strcmp(winner,'AI1')
        AI1Wins=AI1Wins+1;
        save('AI1Wins','AI1Wins');
    else
        AI2Wins= AI2Wins+1;
        save('AI2Wins','AI2Wins');
    end
else 
    handles.WinnerText.String=('Nobody Won! Tie!');
end