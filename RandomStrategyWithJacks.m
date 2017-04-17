%RandomStrategyWithJacks.m
load('hand1');
load('hand2');
load('card');

if turn1
    hand=hand1;
elseif turn2
else
    if hand
    hand=hand2;
end

%% Hand matches
% We now have an array, called hand, with 14 options to play.
% Now we have to find the spots that have already been played.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%NEED TO DETERMINE WHICH PLAYER IT IS TO DETERMINE WHICH IF STATEMENT
%EXECUTES
jacks=false;
for iCnt=1:7
    if hand(iCnt).num52 == 24 || hand(iCnt).num52 == 37
        jacks=true;
    end
end

if jacks
    counter=1;
    for i=1:10
        for j=1:10
            row=i;
            column=j;
            tagBox=['R' num2str(i) 'C' num2str(j)]
            if handles.(tagBox).BackgroundColor == [0.9020 0.7804 0.2510]
                playable(counter) = tagBox;
                counter=counter+1;
            end
        end
    end
    choice=randi(length(playable)); 
    
    playedWith='Jack';
    for iCnt=1:7
        if strcmp(choice,hand(iCnt).loc)
            playedWith='NonJack';
            hand(iCnt).num7=iCnt;
            selection=hand(iCnt).num7;
            tagPlay = playableHand(selection).loc;
            handles.(tagPlay).Value = 1;
        end
        
    end
    
    if strcmp(playedWith,'Jack')
        tagPlay=playable(choice);
        handles.(tagPlay).Value = 1;
        found=false;
        
        for iCnt=1:14
            if strcmp('R0C1' , hand(iCnt).loc);
                selection=iCnt;
            end
        end
            
    end
    
    
    
    
else
    for iCnt = 1:14
        tagBox = hand1(iCnt).loc;
        if handles.(tagBox).BackgroundColor == [0.9020 0.7804 0.2510]
            hand1(iCnt).playable = 1;
        else
            hand1(iCnt).playable = 0;
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
    totalHand = length(playableHand);
    selection = randi(totalHand);
    tagPlay = playableHand(selection).loc;
    handles.(tagPlay).Value = 1;
end

save('selection','selection');
% END PLAYABLE HAND HERE

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Now choose a card from the playable hand
%%%%% FOR THE RANDOM PLACEMENT FUNCTION!!!!!
 %Makes the square the color of the player

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
