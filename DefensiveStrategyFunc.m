function DefensiveStrategyFunc(handles,hObject)
pilePositionF(handles,hObject);
PlayerHand(handles,hObject);
pause(0.5);
winRow=0;
winDiagonal=0;
winColumn=0;
while winColumn==0 && winRow==0 && winDiagonal==0
    
PlayerChoiceF(handles,hObject);
DefensiveStrategy(handles,hObject);

pause(1.5);
RestoreHand(handles,hObject);
[winColumn]=WinColumnCheck(handles,hObject);
[winRow]=WinRowCheck(handles,hObject);
[winDiagonal]=WinDiagonalCheck(handles,hObject);

PlayerHand(handles,hObject);
pause(1.5);


end


if winRow==1
    load('winner');
    handles.WinnerText.String=([num2str(winner),' is the winner!']);
elseif winColumn==1
    load('winner');
    handles.WinnerText.String=([num2str(winner),' is the winner!']);
elseif winDiagonal==1
    load('winner');
    handles.WinnerText.String=([num2str(winner),' is the winner!']);
end