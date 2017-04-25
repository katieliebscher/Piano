function DataStructure(handles)



%% Number
j=1;
for i=1:52
    if i==14 || i==27 || i==40
        j=1;
    end
    card(i).number=j;
    j=j+1;
end

%% Suit
for i=1:52
    if i<14
        card(i).suit='Spades';
    elseif i>=14 && i<27
        card(i).suit='Clubs';
    elseif i>=27 && i<40
        card(i).suit='Hearts';
    elseif i>=40
        card(i).suit='Diamonds';
    end
end

%% Location 1 & Location 2

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
card(11).L1C=1;
card(11).L2R=0;
card(11).L2C=1;

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

card(24).L1R=1;
card(24).L1C=0;
card(24).L2R=1;
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
card(37).L1C=2;
card(37).L2R=0;
card(37).L2C=2;

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
card(48).L2C=6;

card(49).L1R=6;
card(49).L1C=8;
card(49).L2R=10;
card(49).L2C=5;

card(50).L1R=2;
card(50).L1C=0;
card(50).L2R=2;
card(50).L2C=0;

card(51).L1R=7;
card(51).L1C=8;
card(51).L2R=10;
card(51).L2C=4;

card(52).L1R=8;
card(52).L1C=8;
card(52).L2R=10;
card(52).L2C=3;

%% Color
for i=1:52
    card(i).loc1.color=0;
    card(i).loc2.color=0;
end

%% Played
for i=1:52
    card(i).loc1.red=0;
    card(i).loc1.blue=0;
    card(i).loc1.green=0;
    
    card(i).loc2.red=0;
    card(i).loc2.blue=0;
    card(i).loc2.green=0;
    
    card(i).loc1.playable=1;
    card(i).loc2.playable=1;
end

%% Special Jacks
for i=1:52
    card(i).property='none';
end
card(11).property='remove';
card(24).property='wild';
card(37).property='wild';
card(50).property='remove';



%% Struture to Array
% the numbers (p) represent the card numbers loc1 1:52 and loc2 53:104
n=zeros(1,52);

for k=1:52
    m(k)=card(k).L1R;
    n(k)=card(k).L1C;
    q(k)=k;
    
    m(k+52)=card(k).L2R;
    n(k+52)=card(k).L2C;
    q(k+52)=k+52;
end

repeat=true;
len=length(q);
i=1;

while repeat
    for i=1:len-1
        if m(i) > m(i+1)
            mi=m(i);
            mii=m(i+1);
            m(i+1)=mi;
            m(i)=mii;
            
            ni=n(i);
            nii=n(i+1);
            n(i+1)=ni;
            n(i)=nii;
            
            qi=q(i);
            qii=q(i+1);
            q(i+1)=qi;
            q(i)=qii;
            
        end
    end
    
    incorrect=0;
    for i=1:len-1
        if m(i) > m(i+1)
            incorrect=incorrect+1;
        end
    end
    
    if incorrect ~= 0
        repeat=true;
    else
        repeat=false;
    end
    
end

for u=1:10
    for i=1:104
        if m(i)==u
            
            while repeat
                for i=1:len-1
                    if n(i) > n(i+1)
                        ni=n(i);
                        nii=n(i+1);
                        n(i+1)=ni;
                        n(i)=nii;
                        
                        qi=q(i);
                        qii=q(i+1);
                        q(i+1)=qi;
                        q(i)=qii;
                        
                    end
                end
                
                incorrect=0;
                for i=1:len-1
                    if m(i) > m(i+1)
                        incorrect=incorrect+1;
                    end
                end
                
                if incorrect ~= 0
                    repeat=true;
                else
                    repeat=false;
                end
                
            end
            
        end
    end
end

for i=1:104
    a=m(i);
    b=n(i);
    if a ~= 0 && b ~= 0
        c=q(i);
        array(a,b)=c;
    end
end


%% Insert Code for testing



%% Playable structure to Array

for i=1:104
    a=m(i);
    b=n(i);
    if a~=0 && b~=0
        if i<53
            if card(i).loc1.playable==1
                playable(a,b)=1;
            else
                playable(a,b)=0;
            end
        elseif i> 52
            if card(i-52).loc2.playable==1
                playable(a,b)=1;
            else
                playable(a,b)=0;
            end
        end
    end
end

%% Played Structure from Playable

for i=1:10
    for j=1:10
        if playable(i,j)==0
            played(i,j)=1;
        elseif playable(i,j)==1
            played(i,j)=0;
        end
    end
end


%% Convert structure colors to array colors
greenArray=zeros(10);
blueArray=zeros(10);
redArray=zeros(10);
for i=9:104
    if i< 53
        if strcmp(card(i).loc1.color,'green')
            greenArray(m(i),n(i))=1;
        elseif strcmp(card(i).loc1.color,'red')
            redArray(m(i),n(i))=1;
        elseif strcmp(card(i).loc1.color,'blue')
            blueArray(m(i),n(i))=1;
        end
    elseif i>52
        if strcmp(card(i-52).loc2.color,'green')
            greenArray(m(i),n(i))=1;
        elseif strcmp(card(i-52).loc2.color,'red')
            redArray(m(i),n(i))=1;
        elseif strcmp(card(i-52).loc2.color,'blue')
            blueArray(m(i),n(i))=1;
        end
    end
end

%% Or Insert Test Code Here


% a
% for i=5:10
%    j=i-4;
%    played(i,j)=1;
% end




%% Save Data

save('data','card','playable','played','array','greenArray','blueArray','redArray')