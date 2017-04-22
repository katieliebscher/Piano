function shuffledDeck = shuffleDeck(v)
% This function will shuffle every position of a vector or cell array and
% move it to a random spot, switch the entry with a random entry.

totalDeck = length(v);
for iCnt = 1:totalDeck
    switchSpot = randi(totalDeck);
    x = v(iCnt);
    y = v(switchSpot);
    v(iCnt) = y;
    v(switchSpot) = x;
end
shuffledDeck = v;
