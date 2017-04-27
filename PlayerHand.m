function PlayerHand(handles,hObject)

hand1=[];
hand2=[];
load('hand1');
load('hand2');




iCnt=1;
iCard=1;
while iCnt<14
jack=0;
 card=hand1(iCnt).loc;
 AI1Card=(['AI1Card',num2str(iCard)]);
switch card
    case'R1C0'
        JC=imread('JClubs.jpg');
        JClubs=imresize(JC,[60 NaN]);
        handles.(AI1Card).CData=JClubs;
        jack=1;
    case'R2C0'
        JD=imread('JDiamonds.jpg');
        JDiamonds=imresize(JD,[60 NaN]);
        handles.(AI1Card).CData=JDiamonds; 
        jack=1;
    case'R0C1'
        JS=imread('JSpades.jpg');
        JSpades=imresize(JS,[60 NaN]);
        handles.(AI1Card).CData=JSpades;
        jack=1;
    case'R0C2'
        JH=imread('JHearts.jpg');
        JHearts=imresize(JH,[60 NaN]);
        handles.(AI1Card).CData=JHearts;
        jack=1;
end

if ~jack
cardImage=handles.(card).CData;
 handles.(AI1Card).CData=cardImage;
 
end
iCnt=iCnt+2;
 iCard=iCard+1;
 
end

iCnt=1;
iCard=1;
while iCnt<14;
    jack=0;
   card=hand2(iCnt).loc;
   AI2Card=(['AI2Card',num2str(iCard)]);
 switch card
    case'R1C0'
        JC=imread('JClubs.jpg');
        JClubs=imresize(JC,[60 NaN]);
        handles.(AI2Card).CData=JClubs;
        jack=1;
    case'R2C0'
        JD=imread('JDiamonds.jpg');
        JDiamonds=imresize(JD,[60 NaN]);
        handles.(AI2Card).CData=JDiamonds;  
        jack=1;
    case'R0C1'
        JS=imread('JSpades.jpg');
        JSpades=imresize(JS,[60 NaN]);
        handles.(AI2Card).CData=JSpades
        jack=1;
    case'R0C2'
        JH=imread('JHearts.jpg');
        JHearts=imresize(JH,[60 NaN]);
        handles.(AI2Card).CData=JHearts;
        jack=1;
 end

if ~jack
cardImage=handles.(card).CData;
 handles.(AI2Card).CData=cardImage;
 
end
iCnt=iCnt+2;
 iCard=iCard+1;
 
end







