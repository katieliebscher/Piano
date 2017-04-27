function TotalAdvantageValueStrategyFunc(handles,hObject)

pilePosition=15;
% AIWinCounterFunc(handles,hObject);
% load('AI1Wins');
% load('AI2Wins');
% load('Ties');
AI1Wins=0;
AI2Wins=0;
Ties=0;
PlayerHand(handles,hObject);
pause(0.5);
winRow=0;
winDiagonal=0;
winColumn=0;

for iCnt=1:2
    
    while winColumn==0 && winRow==0 && winDiagonal==0 && pilePosition<=103
        
        PlayerChoiceF(handles,hObject);
        WinAndBlockOverride(handles,hObject);
        TotalAdvantageValueStrategy(handles,hObject);
        
        pause(0.1);
        RestoreHand(handles,hObject);
        [winColumn]=WinColumnCheck(handles,hObject);
        [winRow]=WinRowCheck(handles,hObject);
        [winDiagonal]=WinDiagonalCheck(handles,hObject);
        
        PlayerHand(handles,hObject);
        pause(0.1);
        pilePosition=handles.pilePosition.Value;
    end
    
    if winRow==1
        load('winner');
        handles.WinnerText.String=([num2str(winner),' is the winner!']);
        if strcmp(winner,'AI One')
            AI1Wins=AI1Wins+1;
            save('AI1Wins','AI1Wins');
        else
            AI2Wins= AI2Wins+1;
            save('AI2Wins','AI2Wins');
        end
    elseif winColumn==1
        load('winner');
        handles.WinnerText.String=([num2str(winner),' is the winner!']);
        if strcmp(winner,'AI One')
            AI1Wins=AI1Wins+1;
            save('AI1Wins','AI1Wins');
            
        else
            AI2Wins= AI2Wins+1;
            save('AI2Wins','AI2Wins');
        end
    elseif winDiagonal==1
        load('winner');
        handles.WinnerText.String=([num2str(winner),' is the winner!']);
        if strcmp(winner,'AI One')
            AI1Wins=AI1Wins+1;
            save('AI1Wins','AI1Wins');
        else
            AI2Wins= AI2Wins+1;
            save('AI2Wins','AI2Wins');
        end
    else
        handles.WinnerText.String=('Nobody Won! Tie!');
        Ties=Ties+1;
        save('Ties','Ties');
    end
    
    pause(1);
    
    for iRow=1:10
        for iColumn=1:10
            buttonName=['R',num2str(iRow),'C',num2str(iColumn)];
            hButton(iRow,iColumn)=findobj('Tag',buttonName);
            set(hButton(iRow,iColumn),'BackGroundColor',[0.9020 0.7804 0.2510]);
            
        end
    end
    for iAI=1:2
        for iCard=1:7
            handName=['AI',num2str(iAI),'Card',num2str(iCard)];
            hHand(iAI,iCard)=findobj('Tag',handName);
            if iAI==1
                set(hHand(iAI,iCard),'CData',[]);
                set(hHand(iAI,iCard),'BackGroundColor',[0 1 1]);
                
            else
                set(hHand(iAI,iCard),'CData',[]);
                set(hHand(iAI,iCard),'BackGroundColor',[1 0 1]);
            end
        end
    end
    set(handles.pilePosition,'Value',15);
    pilePosition=handles.pilePosition.Value;
    handles.WinnerText.String=[];
    DataStructure(handles);
    ImprovedShuffleDeck(handles);
    dealFirstHand(handles,hObject);
    winRow=0;
    winDiagonal=0;
    winColumn=0;
end
AIWinTotalFunc(handles,hObject);
% AI1Wins=0;
% save('AI1Wins','AI1Wins')
% AI2Wins=0;
% save('AI2Wins','AI2Wins')
% Ties=0;
% save('Ties')
