function AIHandFunc(handles,hObject)

load('playDeck');

% Send first seven cards to AI one and second seven to the second AI
for iCnt=1:7
    
    % AI1Hand=first AI's Hand
    % AI2Hand=second AI's Hand
    AI1Hand(iCnt)=playDeck(iCnt);
    AI2Hand(iCnt)=playDeck(iCnt+7);
    
    
end

save('AI1Hand','AI1Hand');
save('AI2Hand','AI2Hand');