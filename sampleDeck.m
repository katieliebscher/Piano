function sampleDeck(BOB);

BOB = 1;

card(1).number = 1;
card(1).LR = 1;
card(1).LC = 1;

card(2).number = 2;
card(2).LR = 1;
card(2).LC = 2;

card(3).number = 3;
card(3).LR = 2;
card(3).LC = 1;

card(4).number = 4;
card(4).LR = 2;
card(4).LC = 2;

deck = card(1:4);

playDeck = shuffleDeck(deck);

save('playDeck','playDeck');

end