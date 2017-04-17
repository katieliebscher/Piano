%RestoreHand.m
load('selection');
%need to keep a counter at the end of the deal function so that this
%program can run
%such as pileposition=xxxx, 

something=shuffledDeck(pileposition);

counter=1;
for iCnt = 1:14
    if hand(iCnt).num == playableHand(selection).num && counter==1;
        L1R=card(something).L1R;
        L1C=card(something).L1C;
        newtag1=(['R', L1R, 'C', L1C]);
        hand(iCnt).loc=newtag1;
        counter=counter+1;
    elseif hand(iCnt).num == playableHand(selection).num && counter==2;
        L2R=card(something).L2R;
        L2C=card(something).L2C;
        newtag2=(['R', L2R, 'C', L2C]);
        hand(iCnt).loc=newtag2;
    end
end


if turn1
    save('hand1', 'hand')
elseif turn2
    save('hand2', 'hand')
end

%need to send below incrementation to wherever pileposition is originally
%stored