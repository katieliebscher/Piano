
function playDeck = fullDeck(v)


% This is the function which holds the entire structure for the deck,
% when it is run it sends the structure to shuffleDeck.m and then
% the shuffled deck is returned to this function. It then saves the 
% shuffled deck as playDeck, which can be used for the AIHand

card(1).L1R=3;
card(1).L1C=2;
card(1).L2R=5;
card(1).L2C=10;

card(2).L1R=1;
card(2).L1C=2;
card(2).L2R=9;
card(2).L2C=7;

card(3).L1R=1;
card(3).L1C=3;
card(3).L2R=9;
card(3).L2C=6;

card(4).L1R=1;
card(4).L1C=4;
card(4).L2R=9;
card(4).L2C=5;

card(5).L1R=1;
card(5).L1C=5;
card(5).L2R=9;
card(5).L2C=4;

card(6).L1R=1;
card(6).L1C=6;
card(6).L2R=9;
card(6).L2C=3;

card(7).L1R=1;
card(7).L1C=7;
card(7).L2R=9;
card(7).L2C=2;

card(8).L1R=1;
card(8).L1C=8;
card(8).L2R=8;
card(8).L2C=2;

card(9).L1R=1;
card(9).L1C=9;
card(9).L2R=7;
card(9).L2C=2;

card(10).L1R=2;
card(10).L1C=10;
card(10).L2R=6;
card(10).L2C=2;

card(11).L1R=0;
card(11).L1C=0;
card(11).L2R=0;
card(11).L2C=0;

card(12).L1R=3;
card(12).L1C=10;
card(12).L2R=5;
card(12).L2C=2;

card(13).L1R=4;
card(13).L1C=2;
card(13).L2R=4;
card(13).L2C=10;

card(14).L1R=8;
card(14).L1C=6;
card(14).L2R=9;
card(14).L2C=1;

card(15).L1R=2;
card(15).L1C=5;
card(15).L2R=4;
card(15).L2C=7;

card(16).L1R=2;
card(16).L1C=4;
card(16).L2R=4;
card(16).L2C=6;

card(17).L1R=2;
card(17).L1C=3;
card(17).L2R=4;
card(17).L2C=5;

card(18).L1R=2;
card(18).L1C=2;
card(18).L2R=4;
card(18).L2C=4;

card(19).L1R=2;
card(19).L1C=1;
card(19).L2R=4;
card(19).L2C=3;

card(20).L1R=3;
card(20).L1C=1;
card(20).L2R=5;
card(20).L2C=3;

card(21).L1R=4;
card(21).L1C=1;
card(21).L2R=6;
card(21).L2C=3;

card(22).L1R=5;
card(22).L1C=1;
card(22).L2R=7;
card(22).L2C=3;

card(23).L1R=6;
card(23).L1C=1;
card(23).L2R=8;
card(23).L2C=3;

card(24).L1R=0;
card(24).L1C=0;
card(24).L2R=0;
card(24).L2C=0;

card(25).L1R=7;
card(25).L1C=1;
card(25).L2R=8;
card(25).L2C=4;

card(26).L1R=8;
card(26).L1C=1;
card(26).L2R=8;
card(26).L2C=5;

card(27).L1R=2;
card(27).L1C=6;
card(27).L2R=5;
card(27).L2C=7;

card(28).L1R=6;
card(28).L1C=5;
card(28).L2R=9;
card(28).L2C=8;

card(29).L1R=6;
card(29).L1C=6;
card(29).L2R=9;
card(29).L2C=9;

card(30).L1R=5;
card(30).L1C=6;
card(30).L2R=8;
card(30).L2C=9;

card(31).L1R=5;
card(31).L1C=5;
card(31).L2R=7;
card(31).L2C=9;

card(32).L1R=5;
card(32).L1C=4;
card(32).L2R=6;
card(32).L2C=9;

card(33).L1R=5;
card(33).L1C=9;
card(33).L2R=6;
card(33).L2C=4;

card(34).L1R=4;
card(34).L1C=9;
card(34).L2R=7;
card(34).L2C=4;

card(35).L1R=3;
card(35).L1C=9;
card(35).L2R=7;
card(35).L2C=5;

card(36).L1R=2;
card(36).L1C=9;
card(36).L2R=7;
card(36).L2C=6;

card(37).L1R=0;
card(37).L1C=0;
card(37).L2R=0;
card(37).L2C=0;

card(38).L1R=2;
card(38).L1C=8;
card(38).L2R=7;
card(38).L2C=7;

card(39).L1R=2;
card(39).L1C=7;
card(39).L2R=6;
card(39).L2C=7;

card(40).L1R=8;
card(40).L1C=7;
card(40).L2R=10;
card(40).L2C=2;

card(41).L1R=3;
card(41).L1C=3;
card(41).L2R=6;
card(41).L2C=10;

card(42).L1R=3;
card(42).L1C=4;
card(42).L2R=7;
card(42).L2C=10;

card(43).L1R=3;
card(43).L1C=5;
card(43).L2R=8;
card(43).L2C=10;

card(44).L1R=3;
card(44).L1C=6;
card(44).L2R=9;
card(44).L2C=10;

card(45).L1R=3;
card(45).L1C=7;
card(45).L2R=10;
card(45).L2C=9;

card(46).L1R=3;
card(46).L1C=8;
card(46).L2R=10;
card(46).L2C=8;

card(47).L1R=4;
card(47).L1C=8;
card(47).L2R=10;
card(47).L2C=7;

card(48).L1R=5;
card(48).L1C=8;
card(48).L2R=10;
card(48).L2C=5;

card(49).L1R=6;
card(49).L1C=8;
card(49).L2R=10;
card(49).L2C=5;

card(50).L1R=0;
card(50).L1C=0;
card(50).L2R=0;
card(50).L2C=0;

card(51).L1R=7;
card(51).L1C=8;
card(51).L2R=10;
card(51).L2C=4;

card(52).L1R=8;
card(52).L1C=8;
card(52).L2R=10;
card(52).L2C=3;

fullDeck=card(1:52);

playDeck = shuffleDeck(fullDeck);

save('playDeck','playDeck');
 
