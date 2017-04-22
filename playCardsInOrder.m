function playCardsInOrder(handles);
BOB=1;
sampleDeck(BOB);
load('playDeck');
iCnt = 1; %This indicates the first card to the person
while iCnt < 5;
for iCol = 1:2  %Looking at the columns of the board
    for iRow = 1:2 %Looking at the rows ... 
        tagBox = ['R',num2str(iRow),'C',num2str(iCol)]; %Make a tag for the box in question
        tagCard = ['R',num2str(playDeck(iCnt).LR),'C',num2str(playDeck(iCnt).LC)]; %Make a tag for the card
        if strcmp(tagCard,tagBox)
            %set(handles.(tagBox),'BackgroundColor','green');
            handles.(tagBox).Value = 1;
            disp(['They match! It has position ',tagBox]);
            pause(1);
            handles.(tagBox).Value = 0; 
            
        end
    end
end
iCnt = iCnt + 1;
end