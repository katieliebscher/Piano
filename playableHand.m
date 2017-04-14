%% Hand matches
counter = 1;
for iCnt = 1:7
    dealt(iCnt).card = card(iCnt);
    tagCard1 = ['R',num2str(dealt(iCnt).L1R),'C',num2str(dealt(iCnt).L1C)]; %Make a tag for the first possible position of the card
    tagCard2 = ['R',num2str(dealt(iCnt).L2R),'C',num2str(dealt(iCnt).L2C)]; %Make a tag for the second possible position
    hand(counter).loc = tagCard1;
    hand(counter).num = iCnt;
    counter = counter +1;
    hand(counter).loc = tagCard2;
    hand(counter).num = iCnt;  
end
% We now have an array, called hand, with 14 options to play.
% Now we have to find the spots that have already been played. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for iCnt = 1:14
   tagBox = hand(iCnt).loc;
   if handles.(tagBox).BackgroundColor == [0.9020 0.7804 0.2510]
       hand(iCnt).playable = 1;
   else
       hand(iCnt).playable = 0;
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now make a playable hand
counter = 1;
for iCnt = 1:14
    if hand(iCnt).playable == 1
        playableHand(counter).loc = hand(iCnt).loc;
        playableHand(counter).num = hand(iCnt).num;
        counter = counter + 1;
    end
end

% END PLAYABLE HAND HERE

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Now choose a card from the playable hand 
%%%%% FOR THE RANDOM PLACEMENT FUNCTION!!!!!
totalHand = length(playableHand);
selection = randi(totalHand);
tagPlay = playableHand(selection).loc;
handles.(tagPlay).Value = 1; %Makes the square the color of the player

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



    
    
    
    


