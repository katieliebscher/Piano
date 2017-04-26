function [maxValue,index,playableHand]=TotalAdvantageValue(handles,hObject,playableHand)

load('hand1');
load('hand2');
load('data');
load('AIChoice');


if AIChoice==1
    defMult=handles.AI1DefSlider.Value;
    offMult=handles.AI1OffSlider.Value;
else
    defMult=handles.AI2DefSlider.Value;
    offMult=handles.AI2OffSlider.Value;
end

disp(num2str(defMult));
[playableHand]=DefTotalSubValFunction(handles,hObject,playableHand)
[playableHand]=OffTotalSubValFunction(handles,hObject,playableHand)

for iCnt=1:length(playableHand)
    disp(num2str(playableHand(iCnt).defSubValues));
    playableHand(iCnt).defSubValues=playableHand(iCnt).defSubValues * defMult;
    playableHand(iCnt).offSubValues=playableHand(iCnt).offSubValues * offMult;
    playableHand(iCnt).SubValues=playableHand(iCnt).defSubValues...
        +playableHand(iCnt).offSubValues;
end


[maxValue,index]=max([playableHand.SubValues]);

