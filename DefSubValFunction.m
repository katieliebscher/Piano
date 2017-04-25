function [maxDef,index]=DefSubValFunction(handles,hObject,playableHand)

load('hand1');
load('hand2');
load('data');
load('AIChoice');

player1color = [0 1 1]; %blue
player2color = [1 0 1]; %red

yellow= [0.9020 0.7804 0.2510];
black= [0 0 0];

if AIChoice==1
    colorEnd = player1color; 
    colorAdd= player2color;
    hand=hand1;
else
    colorEnd = player2color;
    colorAdd=player1color;
    hand=hand2;
end


for iCnt=1:length(playableHand);
        curLoc=playableHand(iCnt).loc;
        %Find the position of the card in question and record as R and C
        if strcmp(curLoc(3), 'C')
            R=str2double(curLoc(2));
            if length(curLoc)==4
                C=str2double(curLoc(4));
            else
                C=str2double(curLoc(4:5));
            end
        else
            R=str2double(curLoc(2:3));
            if length(curLoc)==5
                C=str2double(curLoc(5));
            else
                C=str2double(curLoc(5:6));
            end
        end
        
        
        %Moving Down
        counter=1;
        multCounter=0;
        downCounter=0;
        ended=false;
        while ~ended && counter<5
            sumDown=0;
            multiplier=0.5;
            R=R+1;
            tag=['R',num2str(R), 'C',num2str(C)];
            
            if R<=0 || R>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                difBlack=black-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumDown=sumDown+1;
                    else
                        sumDown=sumDown+multiplier^(multCounter);
                    end
                    downCounter=downCounter+1;
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumDown=sumDown+1;
                    else
                        sumDown=sumDown+multiplier^(multCounter);
                    end
                    downCounter=downCounter+1;
                    
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    downCounter=downCounter+1;
                    
                end
            end
            counter=counter+1;
        end
        
        %Moving Up
        counter=1;
        upCounter=0;
        ended=false;
        while ~ended && counter<5
            sumUp=0;
            multiplier=0.5;
            R=R-1;
            tag=['R',num2str(R), 'C',num2str(C)];
            
            
            if R<=0 || R>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumUp=sumUp+1;
                    else
                        sumUp=sumUp+multiplier^(multCounter);
                    end
                    upCounter=upCounter+1;
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumUp=sumUp+1;
                    else
                        sumUp=sumUp+multiplier^(multCounter);
                    end
                    upCounter=upCounter+1;
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    upCounter=upCounter+1;
                    
                end
            end
            counter=counter+1;
        end
        
        %Moving Right
        counter=1;
        multCounter=0;
        rightCounter=0;
        ended=false;
        while ~ended && counter<5
            sumRight=0;
            multiplier=0.5;
            C=C+1;
            tag=['R',num2str(R), 'C',num2str(C)];
            
            
            
            if C<=0 || C>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumRight=sumRight+1;
                    else
                        sumRight=sumRight+multiplier^(multCounter);
                    end
                    rightCounter=rightCounter+1;
                    
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumRight=sumRight+1;
                    else
                        sumRight=sumRight+multiplier^(multCounter);
                    end
                    rightCounter=rightCounter+1;
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    rightCounter=rightCounter+1;
                end
            end
            counter=counter+1;
        end
        
        %Moving Left
        counter=1;
        multCounter=0;
        leftCounter=0;
        ended=false;
        while ~ended && counter<5
            sumLeft=0;
            multiplier=0.5;
            C=C-1;
            tag=['R',num2str(R), 'C', num2str(C)];
            
            
            
            if C<=0 || C>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumLeft=sumLeft+1;
                    else
                        sumLeft=sumLeft+multiplier^(multCounter);
                    end
                    leftCounter=leftCounter+1;
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumLeft=sumLeft+1;
                    else
                        sumLeft=sumLeft+multiplier^(multCounter);
                    end
                    leftCounter=leftCounter+1;
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    leftCounter=leftCounter+1;
                end
            end
            
            counter=counter+1;
        end
        
        %Moving Down and Right
        counter=1;
        multCounter=0;
        downRightCounter=0;
        ended=false;
        while ~ended && counter<5
            sumDownRight=0;
            multiplier=0.5;
            R=R+1;
            C=C+1;
            tag=['R', num2str(R), 'C',num2str(C)];
            
            
            
            if R<=0 || R>=11 ||  C<=0 || C>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumDownRight=sumDownRight+1;
                    else
                        sumDownRight=sumDownRight+multiplier^(multCounter);
                    end
                    downRightCounter=downRightCounter+1;
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumDownRight=sumDownRight+1;
                    else
                        sumDownRight=sumDownRight+multiplier^(multCounter);
                    end
                    downRightCounter=downRightCounter+1;
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    downRightCounter=downRightCounter+1;
                end
            end
            counter=counter+1;
        end
        
        %Moving Down and Left
        counter=1;
         multCounter=0;
        downLeftCounter=0;
        ended=false;
        while ~ended && counter<5
            sumDownLeft=0;
            multiplier=0.5;
            R=R+1;
            C=C-1;
            tag=['R', num2str(R), 'C', num2str(C)];
            
            
            
            if R<=0 || R>=11 ||  C<=0 || C>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumDownLeft=sumDownLeft+1;
                    else
                        sumDownLeft=sumDownLeft+multiplier^(multCounter);
                    end
                    downLeftCounter=downLeftCounter+1;
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumDownLeft=sumDownLeft+1;
                    else
                        sumDownLeft=sumDownLeft+multiplier^(multCounter);
                    end
                    downLeftCounter=downLeftCounter+1;
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    downLeftCounter=downLeftCounter+1;
                end
            end
            counter=counter+1;
        end
        
        %Moving Up and Left
        counter=1;
         multCounter=0;
        upLeftCounter=0;
        ended=false;
        while ~ended && counter<5
            sumUpLeft=0;
            multiplier=0.5;
            R=R-1;
            C=C-1;
            tag=['R', num2str(R), 'C', num2str(C)];
            
            
            
            if R<=0 || R>=11 ||  C<=0 || C>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumUpLeft=sumUpLeft+1;
                    else
                        sumUpLeft=sumUpLeft+multiplier^(multCounter);
                    end
                    upLeftCounter=upLeftCounter+1;
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumUpLeft=sumUpLeft+1;
                    else
                        sumUpLeft=sumUpLeft+multiplier^(multCounter);
                    end
                    upLeftCounter=upLeftCounter+1;
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    upLeftCounter=upLeftCounter+1;
                end
            end
            counter=counter+1;
        end
        
        %Moving Up and Right
        counter=1;
         multCounter=0;
        upRightCounter=0;
        ended=false;
        while ~ended && counter<5
            sumUpRight=0;
            multiplier=0.5;
            R=R-1;
            C=C+1;
            tag=['R', num2str(R), 'C', num2str(C)];
            
            
            
            if R<=0 || R>=11 ||  C<=0 || C>=11
                ended=true;
            else
                currentColor=handles.(tag).BackgroundColor;
                difEnd=colorEnd-currentColor;
                difAdd=colorAdd-currentColor;
                difYell=yellow-currentColor;
                if abs(difEnd(1))<0.001 && abs(difEnd(2))<0.001 && abs(difEnd(3))<0.001
                    ended=true;
                elseif abs(difAdd(1))<0.001 && abs(difAdd(2))<0.001 && abs(difAdd(3))<0.001
                    if multCounter==0
                        sumUpRight=sumUpRight+1;
                    else
                        sumUpRight=sumUpRight+multiplier^(multCounter);
                    end
                    upRightCounter=upRightCounter+1;
                elseif abs(difBlack(1))<0.001 && abs(difBlack(2))<0.001 && abs(difBlack(3))<0.001
                    if multCounter==0
                        sumUpRight=sumUpRight+1;
                    else
                        sumUpRight=sumRight+multiplier^(multCounter);
                    end
                    upRightCounter=upRightCounter+1;
                elseif abs(difYell(1))<0.001 && abs(difYell(2))<0.001 && abs(difYell(3))<0.001
                    multCounter=multCounter+1;
                    upRightCounter=upRightCounter+1;
                end
            end
            counter=counter+1;
        end
        %Sum all directions into one value
        if upCounter+downCounter>=4
            vertOffSubValue=sumDown+sumUp;
        else
            vertOffSubValue=0;
        end
        
        if leftCounter+rightCounter>=4
            horzOffSubValue=sumLeft+sumRight;
        else
            horzOffSubValue=0;
        end
        
        if downRightCounter+upLeftCounter>=4
            negSlopeOffSubValue=sumDownRight+sumUpLeft;
        else
            negSlopeOffSubValue=0;
        end
        
        if downLeftCounter+upRightCounter>=4
            posSlopeOffSubValue=sumDownLeft+sumUpRight;
        else
            posSlopeOffSubValue=0;
        end
        
        playableHand(iCnt).offSubValues=vertOffSubValue+horzOffSubValue+negSlopeOffSubValue+posSlopeOffSubValue;
        
        counter=1;
        for iCnt=1:length(playableHand)
                if ~strcmp(playableHand(iCnt).loc,'R1C1') && ~strcmp(playableHand(iCnt).loc,'R1C10') && ~strcmp(playableHand(iCnt).loc,'R10C1') && ~strcmp(playableHand(iCnt).loc,'R10C10')
                    playableHand(counter).loc=playableHand(iCnt).loc;
                    playableHand(counter).offSubValues=playableHand(iCnt).offSubValues;
                    counter=counter+1;
                end
        end
        
        
        end

        disp(num2str(max([playableHand.offSubValues])));
        % Find best value
        [maxDef,index]=max([playableHand.offSubValues]);

