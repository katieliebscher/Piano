function playRealCardsInOrder(handles,hObject);


AIHandFunc(handles,hObject);

AIChoice = PlayerChoiceF(handles,hObject);

if AIChoice==1
   for iCnt=1:7
       load('AI1Hand');
       playAIHand(iCnt)= AI1Hand(iCnt);
   end
else
    load('AI2Hand');
    for iCnt=1:7
    playAIHand(iCnt)= AI2Hand(iCnt);
    end
end

iCnt = 1; %This indicates the first card to the person

%Looking at the columns of the board

for iCol = 1:10
    %Looking at the rows ...
    for iRow = 1:10
        
        % Look at both positions of card
        for iL=1:2
            %Make a tag for the box in question
            tagBox = get(hObject,'Tag');
            
            % Make a tag for the card
            tagCard = (['R',num2str(playAIHand(iCnt).(['L',num2str(iL),'R'])...
                ),'C', num2str(playAIHand(iCnt).(['L',num2str(iL),'C']))]);
            
            
            % Check if card and position match
            if strcmp(tagCard,tagBox)
                
                if AIChoice==1
                    PlayerOneTokenF(handles,hObject);
                else
                    PlayerTwoTokenF(handles,hObject);
                end
                
            end % ends if statement
            
        end % ends iL Statement
        
        % Increase Counter
        
        
    end % ends iRow
    
end % ends iCol
iCnt=iCnt+1;


