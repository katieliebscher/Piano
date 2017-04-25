function DefensiveStrategy(handles,hObject)

load('hand1');
load('hand2');
load('data');
load('AIChoice');

player1color = [0 1 1]; %blue
player2color = [1 0 1]; %red

yellow= [0.9020 0.7804 0.2510];
black= [0 0 0];

if AIChoice==1
    colorOp = player2color; %opposing color
    colorSelf= player1color;
    hand=hand1;
else
    colorOp = player1color;
    colorSelf=player2color;
    hand=hand2;
end



%% Find all cards and deterime if there are jacks

TwoEyedJacks=false;
for iCnt=1:14
    if hand(iCnt).num52 == 24 || hand(iCnt).num52 == 50
        TwoEyedJacks=true;
        TwoEyedJackPlace=hand(iCnt).num7;
        % TwoEyedJackInHand14=iCnt;
    end
end

OneEyedJacks=false;
for iCnt=1:14
    if hand(iCnt).num52 == 11 || hand(iCnt).num52 == 37
        OneEyedJacks=true;
        OneEyedJackPlace=hand(iCnt).num7; %place in your hand (out of 7)
        %OneEyedJackInHand14=iCnt; %last of the two entries for 1 jack
    end
end

% Create hand (assuming no jacks)
for iCnt = 1:14
    tagBox = hand(iCnt).loc;
    dif=handles.(tagBox).BackgroundColor(1)-0.9020;
    if dif(1)<=0.01
        hand(iCnt).playable = 1;
    else
        hand(iCnt).playable = 0;
    end
end



%% Determine Sub Values
if ~OneEyedJacks && ~TwoEyedJacks
    
    % create playable hand assuming no jacks
    
    counter = 1;
    for iCnt = 1:14
        if hand(iCnt).playable == 1
            playableHand(counter).loc = hand(iCnt).loc;
            playableHand(counter).num7 = hand(iCnt).num7;
            counter = counter + 1;
            action='place';
        end
    end
    
    [maxOff,index]=DefSubValFunction(handles,hObject,playableHand);
    
    discard=playableHand(index).num7;
    target=playableHand(index).loc;
    
    
    
elseif ~OneEyedJacks && TwoEyedJacks
    action='place';
    counter=1;
   
    for i=1:10
        for j=1:10
            row=i;
            column=j;
            tagBox=['R', num2str(i), 'C' ,num2str(j)];
            dif=handles.(tagBox).BackgroundColor(1)-0.9020;
            if dif(1)<=0.01
                playableHand(counter).loc = tagBox;
                playableHand(counter).num7 = hand(iCnt).num7;
                counter=counter+1;
            end
        end
    end
    
    [maxDef,index]=DefSubValFunction(handles,hObject,playableHand);
    for iCnt=1:14
        if strcmp(playableHand(index).loc, hand(iCnt).loc)
            discard=hand(iCnt).num7;
            target=playableHand(iCnt).loc;
        else
            discard=TwoEyedJackPlace;
            target=playableHand(index).loc;
        end
    end
    
elseif OneEyedJacks && ~TwoEyedJacks
    removableFound=0;
    counter=1;
    for i=1:10
        for j=1:10
            row=i;
            column=j;
            tagBox=['R' num2str(row) 'C' num2str(column)];
            BoxColor=(handles.(tagBox).BackgroundColor);
            dif1=BoxColor(1)-color(1);
            dif2=BoxColor(2)-color(2);
            dif3=BoxColor(3)-color(3);%If the color of the box matches the opponent's color, you can delete their color.
            if abs(dif1)<=.001 && abs(dif2)<=.001 && abs(dif3)<=.001
                removableSpot(counter).loc = tagBox;
                counter=counter+1;
                removableFound=1;
            end
        end
    end
    
    % create playable hand
    
    counter = 1;
    for iCnt = 1:14
        if hand(iCnt).playable == 1
            playableHand(counter).loc = hand(iCnt).loc;
            playableHand(counter).num7 = hand(iCnt).num7;
            counter = counter + 1;
            %action='place';
        end
    end
    [maxOffNormal, indexNormal]=DefSubValFunction(handles,hObject,playableHand);
    if removableFound
        
        [maxOffRemove, indexRemove]=DefSubValFunction(handles,hObject,removableSpot);
        if maxOffNormal > maxOffRemove
            action='place';
            discard=playableHand(indexNormal).num7;
            target=playableHand(indexNormal).loc;
        else
            action='remove'
            discard=OneEyedJackPlace;
            target=removableSpot(indexRemove).loc;
        end
        
    else
        action='place';
        
        discard=playableHand(indexNormal).num7;
        target=playableHand(indexNormal).loc;
    end
    
    
    
elseif TwoEyedJacks && OneEyedJacks
    
    counter=1;
    
    for i=1:10
        for j=1:10
            row=i;
            column=j;
            tagBox=['R', num2str(i), 'C' ,num2str(j)];
            dif=handles.(tagBox).BackgroundColor(1)-0.9020;
            if dif(1)<=0.01
                playableHand(counter).loc = tagBox;
                playableHand(counter).num7 = hand(iCnt).num7;
                counter=counter+1;
            end
        end
    end
    
    
    removableFound=0;
    counter=1;
    for i=1:10
        for j=1:10
            row=i;
            column=j;
            tagBox=['R' num2str(row) 'C' num2str(column)];
            BoxColor=(handles.(tagBox).BackgroundColor);
            dif1=BoxColor(1)-color(1);
            dif2=BoxColor(2)-color(2);
            dif3=BoxColor(3)-color(3);%If the color of the box matches the opponent's color, you can delete their color.
            if abs(dif1)<=.001 && abs(dif2)<=.001 && abs(dif3)<=.001
                removableSpot(counter).loc = tagBox;
                counter=counter+1;
                removableFound=1;
            end
        end
    end
    [maxOffNormal, indexNormal]=DefSubValFunction(handles,hObject,playableHand);
    if removableFound
        
        [maxOffRemove, indexRemove]=DefSubValFunction(handles,hObject,removableSpot);
        
        if maxOffNormal > maxOffRemove
            % Check if 2Eyed Jack in hand
            for iCnt=1:14
                if strcmp(playableHand(index).loc, hand(iCnt).loc)
                    discard=hand(iCnt).num7;
                    target=playableHand(iCnt).loc;
                else
                    discard=TwoEyedJackPlace;
                    target=playableHand(index).loc;
                end
            end
            action='place';
            
        else
            action='remove'
            discard=OneEyedJackPlace;
            target=removableSpot(indexRemove).loc;
        end
    else
        discard=playableHand(indexNormal).num7;
        target=playableHand(indexNormal).loc;
        action='place';
    end
end    
    %%Change Color of Target
    if strcmp(action,'place')
        if AIChoice==1
            handles.(target).BackgroundColor = [0 1 1];
        else
            handles.(target).BackgroundColor = [1 0 1];
        end
    else
        handles.(target).BackgroundColor = yellow;
    end
    
    save('action','action')
    save('discard','discard')
    save('target','target')
    