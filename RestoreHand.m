function RestoreHand(handles,hObject)
load('discard');
load('shuffledDeck');
load('AIChoice');
if AIChoice==1
    load('hand');
    load('hand2');
else
    load('hand');
    load('hand1');
end
load('playableHand');
load('data');

%need to keep a counter at the end of the deal function so that this
%program can run
%such as pileposition=xxxx, 

pilePosition=handles.pilePosition.Value;
disp(num2str(pilePosition));

something=shuffledDeck(pilePosition);

counter=1;
for iCnt = 1:14
    if hand(iCnt).num7 == discard && counter==1;
        L1R=card(something).L1R;
        L1C=card(something).L1C;
        newtag1=(['R',num2str(L1R), 'C',num2str(L1C)]);
        hand(iCnt).loc=newtag1;
        counter=counter+1;
    elseif hand(iCnt).num7 == discard && counter==2;
        L2R=card(something).L2R;
        L2C=card(something).L2C;
        newtag2=(['R',num2str(L2R), 'C',num2str(L2C)]);
        hand(iCnt).loc=newtag2;
%         hand(iCnt).num52=shuffledDeck(pilePosition);
    end
end

load('AIChoice');
turn=AIChoice;
if turn==1
    hand1=hand;
    save('hand1','hand1');
elseif turn==2
    hand2=hand;
    save('hand2','hand2');
end

%need to send below incrementation to wherever pileposition is originally
%stored
pilePosition=pilePosition+1;
% save('pilePosition','pilePosition');
handles.pilePosition.Value=pilePosition;

