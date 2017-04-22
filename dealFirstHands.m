%dealFirstHands.m
load('data');
load('shuffledDeck');
for iCnt = 1:7
    num = shuffledDeck(iCnt);
    dealt1(iCnt).card = card(num);
end

for iCnt = 8:14
    num = shuffledDeck(iCnt);
    dealt2(iCnt-7).card = card(num);
end

counter=1;
for iCnt = 1:7
    tagCard1 = ['R',num2str(dealt1(iCnt).card.L1R),'C',num2str(dealt1(iCnt).card.L1C)]; %Make a tag for the first possible position of the card
    tagCard2 = ['R',num2str(dealt1(iCnt).card.L2R),'C',num2str(dealt1(iCnt).card.L2C)]; %Make a tag for the second possible position
    hand1(counter).loc = tagCard1;
    hand1(counter).num7 = iCnt;
    hand1(counter).num52= shuffledDeck(iCnt);
    counter = counter +1;
    hand1(counter).loc = tagCard2;
    hand1(counter).num7 = iCnt;
    hand1(counter).num52=shuffledDeck(iCnt);
    counter=counter+1;
end

counter=1;
for iCnt = 8:14
    tagCard1 = ['R',num2str(dealt2(iCnt-7).card.L1R),'C',num2str(dealt2(iCnt-7).card.L1C)]; %Make a tag for the first possible position of the card
    tagCard2 = ['R',num2str(dealt2(iCnt-7).card.L2R),'C',num2str(dealt2(iCnt-7).card.L2C)]; %Make a tag for the second possible position
    hand2(counter).loc = tagCard1;
    hand2(counter).num7 = iCnt-7;
    hand2(counter).num52= shuffledDeck(iCnt);
    counter = counter +1;
    hand2(counter).loc = tagCard2;
    hand2(counter).num7 = iCnt;
    hand2(counter).num52= shuffledDeck(iCnt);
    counter=counter+1;
end

save('hand1', 'hand1')
save('hand2', 'hand2')

 


