function playRealCardsInOrder(handles,hObject);

% Call in Shuffled Deck/Hands
dealFirstHand(handles,hObject);




% Determine which AI is playing and load that AI's Hand

AIChoice = PlayerChoiceF(handles,hObject);

if AIChoice==1
    for iCnt=1:7
        load('hand1');
        playAIHand(iCnt)= hand1(iCnt);
        disp((playAIHand(iCnt)));
    end
else
    load('hand2');
    for iCnt=1:7
        playAIHand(iCnt)= hand2(iCnt);
        disp((playAIHand(iCnt)));
    end
end

% iCnt denotes the card in the AI's hand


        
     
        % Look at both positions of card
        for iL=1:2
            %Make a tag for the box in question
            tagBox = get(hObject,'Tag');
            
            for iCnt=1:7
                % Make a tag for the card
                tagCard = (['R',num2str(playAIHand(iCnt).(['L',num2str(iL),'R'])...
                    ),'C', num2str(playAIHand(iCnt).(['L',num2str(iL),'C']))]);
                
                
                % Check if card and position match
                if strcmp(tagCard,tagBox)
                    
                    % Determine which AI Token should be placed
                    if AIChoice==1
                        
                        % Send Button location to function to change color
                        PlayerOneTokenF(handles,hObject);
                        
                    else
                        % Send Button location to function to change color
                        PlayerTwoTokenF(handles,hObject);
                        
                    end
                    
                    
                end % ends if statement
                
            end
            
        end % ends iL Statement
   
     



