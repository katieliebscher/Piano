%% Sequence Results

%% Full Offensive v random
OffensiveWins=44;
RandomWins=6;

y=[OffensiveWins,RandomWins]

figure(1)
bar(y)
title('Fully Offensive v Random')
ylabel('Wins')
Labels={'Full Offensive','Random'}
set(gca,'XTick',1:2,'XTickLabel',Labels)



%% Full Defensive v Random
DefensiveWins=41;
RandomWins=9;
y=[DefensiveWins,RandomWins]

figure(2)
bar(y)

Labels={'Fully Defensive','Random'}
set(gca,'XTick',1:2,'XTickLabel',Labels)
title('Fully Defensive v Random')


%% Full Offensive v Full Defensive
OffensiveWins=35;
DefensiveWins=15;

y=[OffensiveWins,DefensiveWins]

figure(3)
bar(y)

Labels={'Fully Defensive','Fully Defensive','Ties'}
set(gca,'XTick',1:2,'XTickLabel',Labels)
title('Fully Defensive v Random')

%% Half Offensive v Half Defensive
OffensiveWins=27;
DefensiveWins=22;
Ties=1;
y=[OffensiveWins,DefensiveWins]

figure(4)
bar(y)

Labels={'Partially Offensive v Partially Defensive','Ties'}
set(gca,'XTick',1:3,'XTickLabel',Labels)
title('Fully Defensive v Random')


%% Half Offensive v Full Defensive
OffensiveWins=33;
DefensiveWins=19;
y=[OffensiveWins,DefensiveWins]

figure(5)
bar(y)

Labels={'Fully Defensive','Random'}
set(gca,'XTick',1:2,'XTickLabel',Labels)
title('Partially Defensive v Fully Defensive')


%% Full Offensive v Half Defensive
OffensiveWins=23;
DefensiveWins=27;
y=[OffensiveWins,DefensiveWins]

figure(6)
bar(y)

Labels={'Fully Defensive','Partially Defensive','Ties'}
set(gca,'XTick',1:2,'XTickLabel',Labels)
title('Fully Defensive v Random')

%% Random v Random
RandomPlayer1=25;
RandomPlayer2=21;
Ties=4;
y=[OffensiveWins,DefensiveWins,Ties]

figure(7)
bar(y)

Labels={'Random Player 1','Random Player 2','Ties'}
set(gca,'XTick',1:3,'XTickLabel',Labels)
title('Fully Defensive v Random')

