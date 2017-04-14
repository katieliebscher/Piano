% %% Hand matches
% counter = 1;
% for iCnt = 1:7
%     dealt(iCnt).card = card(iCnt);
%     tagCard1 = ['R',num2str(dealt(iCnt).L1R),'C',num2str(dealt(iCnt).L1C)]; %Make a tag for the first possible position of the card
%     tagCard2 = ['R',num2str(dealt(iCnt).L2R),'C',num2str(dealt(iCnt).L2C)]; %Make a tag for the second possible position
%     hand(counter).loc = tagCard1;
%     hand(counter).num = iCnt;
%     counter = counter +1;
%     hand(counter).loc = tagCard2;
%     hand(counter).num = iCnt;  
% end
% % We now have an array, called hand, with 14 options to play.
% % Now we have to find the spots that have already been played. 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for iCnt = 1:14
%    tagBox = hand(iCnt).loc;
%    if handles.(tagBox).BackgroundColor == [0.9020 0.7804 0.2510]
%        hand(iCnt).playable = 1;
%    else
%        hand(iCnt).playable = 0;
%    end
% end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Now make a playable hand
% counter = 1;
% for iCnt = 1:14
%     if hand(iCnt).playable == 1
%         playableHand(counter).loc = hand(iCnt).loc;
%         playableHand(counter).num = hand(iCnt).num;
%         counter = counter + 1;
%     end
% end

% END PLAYABLE HAND HERE

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % Now choose a card from the playable hand 
% %%%%% FOR THE RANDOM PLACEMENT FUNCTION!!!!!
% totalHand = length(playableHand);
% selection = randi(totalHand);
% tagPlay = playableHand(selection).loc;
% handles.(tagPlay).Value = 1; %Makes the square the color of the player

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%need to keep a counter at the end of the deal function so that this
%program can run
%such as pileposition=xxxx, 

something=v(pileposition);

counter=1;
for iCnt = 1:14
    if hand(iCnt).num == playableHand(selection).num && counter==1;
        L1R=card(something).L1R;
        L2R=card(something).L2R;
        newtag1=(['R', L1R, 'C', L1C]);
        hand(iCnt).loc=newtag1;
        counter=counter+1;
    elseif hand(iCnt).num == playableHand(selection).num && counter==2;
        L1C=card(something).L1C;
        L2C=card(something).L2C;
        newtag2=(['R', L2R, 'C', L2C]);
        hand(iCnt).loc=newtag2;
    end
end


%need to send below incrementation to wherever pileposition is originally
%stored
pileposition=pileposition+1;

