function FinalRandomStrategy(handles,hObject)
choice=0;
removable=[];
playableHand=[];
load('hand1');
load('hand2');
load('data');
load('AIChoice');

player1color = [0 1 1]; %blue
player2color = [1 0 1]; %red

if AIChoice==1
    color = player2color; %Looking for opposing player's colors to remove
    hand=hand1;
else
    color = player1color;
    hand=hand2;
end




TwoEyedJacks=0;
for iCnt=1:14
    if strcmp(hand(iCnt).loc,'R1C0') || strcmp(hand(iCnt).loc,'R2C0') 
        TwoEyedJacks=1;
        TwoEyedJackPlace=hand(iCnt).num7;
%         TwoEyedJackInHand14=iCnt;
    end
end

OneEyedJacks=0;
for iCnt=1:14
    if strcmp(hand(iCnt).loc,'R0C1') || strcmp(hand(iCnt).loc,'R0C2') 
        OneEyedJacks=1;
        OneEyedJackPlace=hand(iCnt).num7; %place in your hand (out of 7)
%         OneEyedJackInHand14=iCnt; %last of the two entries for 1 jack
    end
end

%% No Jacks
if ~OneEyedJacks && ~TwoEyedJacks
    for iCnt = 1:14
        tagBox = hand(iCnt).loc;
        dif=handles.(tagBox).BackgroundColor(1)-0.9020;
        if dif(1)<=0.01
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
            playableHand(counter).num7 = hand(iCnt).num7;
            counter = counter + 1;
            action='place';
        end
    end
    handLength = length(playableHand);
    choice = randi(handLength);
    discard=playableHand(choice).num7;
    target = playableHand(choice).loc;
    
 % Change Color of Target 
    if AIChoice==1
        handles.(target).BackgroundColor = [0 1 1];
        
    else
        handles.(target).BackgroundColor = [1 0 1];
        
    end
    save('action','action');
    save('discard', 'discard');
    save('target', 'target');
end
%% Only Two Eyed Jacks    
if TwoEyedJacks && ~OneEyedJacks
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
                counter=counter+1;
                
            end
        end
    end
    choice=randi(length(playableHand));
    
    playedWith='Jack';
    for iCnt=1:14
        
        if ~strcmp(playableHand(choice).loc, hand(iCnt).loc)
            discard=TwoEyedJackPlace;
            target=playableHand(choice).loc;
        else
            playedWith='NonJack';
            discard=hand(iCnt).num7; %selection is the card (out of 7) in your hand that will be played
            target=playableHand(choice).loc;
            
        end
        if AIChoice==1
            handles.(target).BackgroundColor = [0 1 1];
            
        elseif AIChoice==2
            handles.(target).BackgroundColor = [1 0 1];
            
            
        end
       
        % TEST below is original code
        
%         if strcmp(playableHand(choice).loc, hand(iCnt).loc)
%             playedWith='NonJack';
%             discard=hand(iCnt).num7; %selection is the card (out of 7) in your hand that will be played
%             target=playableHand(choice).loc;
%         else
%             discard=TwoEyedJackPlace;
%             target=playableHand(choice).loc;
%         end
        
        
    end
    save('action','action');
    save('discard', 'discard');
    save('target', 'target');
end
%% Only One Eyed Jacks
if ~TwoEyedJacks && OneEyedJacks
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
            if abs(dif1)<=.01 && abs(dif2)<=.01 && abs(dif3)<=.01
                removableSpot(counter).loc = tagBox;
                counter=counter+1;
                removableFound=1;
            end
        end
    end
    % This will create a data structure, (removable.box), that only shows the
    % possible places that a player can delete using a one-eyed jack.
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    for iCnt = 1:14
        if hand(iCnt).num52==11 || hand(iCnt).num52==37
            hand(iCnt).playable=0;
        else
            tagBox = hand(iCnt).loc;
            dif=handles.(tagBox).BackgroundColor-[0.9020 0.7804 0.2510];
            if dif(1)<=0.01
                hand(iCnt).playable = 1;
            end
        end
    end
   
    counter = 1;
    for iCnt = 1:14
        if hand(iCnt).playable == 1
            playableHand(counter).loc = hand(iCnt).loc;
            playableHand(counter).num7 = hand(iCnt).num7;
            counter = counter + 1;
        end
    end
    if removableFound
        removeSpots=length(removableSpot);
        playSpots=length(playableHand);
        totPlays=removeSpots+playSpots;
        veryGeneric=randi(totPlays);
        if veryGeneric<=removeSpots
            target=removableSpot(veryGeneric).loc;
            action='remove';
            discard=OneEyedJackPlace;
            
        else
            target=playableHand(veryGeneric-removeSpots).loc;
            discard=playableHand(veryGeneric-removeSpots).num7;
            action='place';
%             
        end
        save('action','action');
        save('discard', 'discard');
        save('target', 'target');
        
        
        if strcmp(action,'place');
            
            if AIChoice==1
                handles.(target).BackgroundColor = [0 1 1];
                
            elseif AIChoice==2
                handles.(target).BackgroundColor = [1 0 1];
            end
            
        elseif strcmp(action,'remove')
            
            if AIChoice==1
                handles.(target).BackgroundColor =[0.9020 0.7804 0.2510] ;
                
            elseif AIChoice==2
                handles.(target).BackgroundColor = [0.9020 0.7804 0.2510];
            end
        end
    elseif ~removableFound  
        for iCnt = 1:14
            tagBox = hand(iCnt).loc;
            dif=handles.(tagBox).BackgroundColor(1)-0.9020;
            if dif(1)<=0.01
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
                playableHand(counter).num7 = hand(iCnt).num7;
                counter = counter + 1;
                action='place';
            end
        end
        
        handLength = length(playableHand);
        choice = randi(handLength);
        discard=playableHand(choice).num7;
        target = playableHand(choice).loc;
        
        % Change Color of Target
        if AIChoice==1
            handles.(target).BackgroundColor = [0 1 1];
            
        else
            handles.(target).BackgroundColor = [1 0 1];
            
        end
        save('action','action');
        save('discard', 'discard');
        save('target', 'target');
    end
end



%% Both Jacks
if TwoEyedJacks && OneEyedJacks
    counter=1;
    for i=1:10
        for j=1:10
            row=i;
            column=j;
            tagBox=['R' num2str(i) 'C' num2str(j)];
            dif=handles.(tagBox).BackgroundColor-[0.9020 0.7804 0.2510];
            if dif(1)<=0.01
                playableHand(counter).loc = tagBox;
                counter=counter+1;
            end
        end
    end
    
    removablefound=0;
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
            if abs(dif1)<=.01 && abs(dif2)<=.01 && abs(dif3)<=.01
                removable(counter).loc = tagBox;
                counter=counter+1;
                removablefound=1;
            end
        end
    end
    if removablefound
    removeSpots=length(removable);
    playSpots=length(playableHand);
    totPlays=removeSpots+playSpots;
    moreGeneric=randi(totPlays);
   
    
    if moreGeneric<=removeSpots
        target=removable(moreGeneric).loc;
        action='remove';
        discard=OneEyedJackPlace;
       
    else
        target=playableHand(moreGeneric-removeSpots).loc;
        discard=TwoEyedJackPlace;
        action='place';
        
    end
   if strcmp(action,'place')
    if AIChoice==1
        handles.(target).BackgroundColor = [0 1 1];
        
    elseif AIChoice==2
        handles.(target).BackgroundColor = [1 0 1];
    end
   elseif strcmp(action,'remove')
       if AIChoice==1
        handles.(target).BackgroundColor = [0.9020 0.7804 0.2510] ;
        
    elseif AIChoice==2
        handles.(target).BackgroundColor = [0.9020 0.7804 0.2510] ;
    end
        
        
    end
    save('action','action');
    save('discard', 'discard');
    save('target', 'target');
    end

end
save('hand','hand');
save('playableHand','playableHand');








    
   
    
    
    