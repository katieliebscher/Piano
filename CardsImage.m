function CardsImage(handles)
 

% Set Leprechaun Pictures 
A = imread('irish.jpg');
irish=imresize(A,[70 50]);
handles.R1C1.CData=irish; 
handles.R10C10.CData=irish; 


% Set ND Pictures
A=imread('ND.jpg');
ND=imresize(A,[70 50]);
handles.R1C10.CData=ND;    
handles.R10C1.CData=ND;  

%% Hearts
% Set Ace Position
KHearts= imread('HA.jpg');
HAPic=imresize(KHearts,[60 40]);
handles.R2C6.CData=HAPic;
handles.R5C7.CData=HAPic;


% Set King Position
KHearts = imread('KHearts.jpg');
KHearts=imresize(KHearts,[60 NaN]);
handles.R2C7.CData=KHearts;      
handles.R6C7.CData=KHearts;


% Set Queen Position
QH = imread('QHearts.jpg');
QHearts=imresize(QH,[60 NaN]);
handles.R7C7.CData=QHearts;      
handles.R2C8.CData=QHearts;

% Set Jack Position
JH=imread('JHearts.jpg');
JHearts=imresize(JH,[60 NaN]);
handles.R0C2.CData=JHearts;

% Set 10 Position
H10 = imread('H10.jpg');
H10=imresize(H10,[60 40]);
handles.R2C9.CData=H10;      
handles.R7C6.CData=H10;

% Set 9 Position
A = imread('H9.jpg');
H9=imresize(A,[60 40]);
handles.R3C9.CData=H9;      
handles.R7C5.CData=H9;

% Set 8 Position
A = imread('H8.jpg');
H8=imresize(A,[60 40]);
handles.R4C9.CData=H8;      
handles.R7C4.CData=H8;

% Set 7 Position
A = imread('H7.jpg');
H7=imresize(A,[60 40]);
handles.R5C9.CData=H7;      
handles.R6C4.CData=H7;


% Set 6 Position
A = imread('H6.jpg');
H6=imresize(A,[60 40]);
handles.R6C9.CData=H6;      
handles.R5C4.CData=H6;

% Set 5 Position
A = imread('H5.jpg');
H5=imresize(A,[60 40]);
handles.R7C9.CData=H5;      
handles.R5C5.CData=H5;


% Set 4 Position
A = imread('H4.jpg');
H4=imresize(A,[60 40]);
handles.R8C9.CData=H4;      
handles.R5C6.CData=H4;

% Set 3 Position
A = imread('H3.jpg');
H3=imresize(A,[60 40]);
handles.R9C9.CData=H3;      
handles.R6C6.CData=H3;

% Set 2 Position
A = imread('H2.jpg');
H2=imresize(A,[60 40]);
handles.R9C8.CData=H2;      
handles.R6C5.CData=H2;

%% Spades
% Set Ace Position
A = imread('SA.jpg');
SA=imresize(A,[60 40]);
handles.R3C2.CData=SA;      
handles.R5C10.CData=SA;


% Set King Position
A = imread('KSpades.jpg');
KSpades=imresize(A,[60 NaN]);
handles.R4C2.CData=KSpades;      
handles.R4C10.CData=KSpades;


% Set Queen of Spades
A = imread('QSpades.jpg');
QSpades=imresize(A,[60 NaN]);
handles.R5C2.CData=QSpades;      
handles.R3C10.CData=QSpades;

% Set Jack Position
JS=imread('JSpades.jpg');
JSpades=imresize(JS,[60 NaN]);
handles.R0C1.CData=JSpades;

% Set 10 Position
A = imread('S10.jpg');
S10=imresize(A,[60 40]);
handles.R6C2.CData=S10;      
handles.R2C10.CData=S10;

% Set 9 Position
A = imread('S9.jpg');
S9=imresize(A,[60 40]);
handles.R7C2.CData=S9;      
handles.R1C9.CData=S9;


% Set 8 Position
A = imread('S8.jpg');
S8=imresize(A,[60 40]);
handles.R1C8.CData=S8;      
handles.R8C2.CData=S8;


% Set 7 Position
A = imread('S7.jpg');
S7=imresize(A,[60 40]);
handles.R9C2.CData=S7;      
handles.R1C7.CData=S7;

% Set 6 Position
A = imread('S6.jpg');
S6=imresize(A,[60 40]);
handles.R1C6.CData=S6;      
handles.R9C3.CData=S6;


% Set 5 Position
A = imread('S5.jpg');
S5=imresize(A,[60 40]);
handles.R1C5.CData=S5;      
handles.R9C4.CData=S5;

% Set 4 Position
A = imread('S4.jpg');
S4=imresize(A,[60 40]);
handles.R1C4.CData=S4;      
handles.R9C5.CData=S4;


% Set 3 Position
A = imread('S3.jpg');
S3=imresize(A,[60 40]);
handles.R1C3.CData=S3;      
handles.R9C6.CData=S3;


% % Set 2 Position
A = imread('S2.jpg');
S2=imresize(A,[60 40]);
handles.R1C2.CData=S2;      
handles.R9C7.CData=S2;
%% Diamonds

% Set Ace Position
A = imread('DA.jpg');
DA=imresize(A,[60 40]);
handles.R8C7.CData=DA;      
handles.R10C2.CData=DA;

% Set King Position
A = imread('KDiamonds.jpg');
KDiamonds=imresize(A,[60 NaN]);
handles.R8C8.CData=KDiamonds;      
handles.R10C3.CData=KDiamonds;

% Set Queen of Diamonds
A = imread('QDiamonds.jpg');
QDiamonds=imresize(A,[60 NaN]);
handles.R7C8.CData=QDiamonds;      
handles.R10C4.CData=QDiamonds;

% Set Jack Position
JD=imread('JDiamonds.jpg');
JDiamonds=imresize(JD,[60 NaN]);
handles.R2C0.CData=JDiamonds;     

% Set 10 Position
A = imread('D10.jpg');
D10=imresize(A,[60 40]);
handles.R6C8.CData=D10;      
handles.R10C5.CData=D10;

% Set 9 Position
A = imread('D9.jpg');
D9=imresize(A,[60 40]);
handles.R5C8.CData=D9;      
handles.R10C6.CData=D9;

% Set 8 Position
A = imread('D8.jpg');
D8=imresize(A,[60 40]);
handles.R4C8.CData=D8;      
handles.R10C7.CData=D8;

% Set 7 Position
A = imread('D7.jpg');
D7=imresize(A,[60 40]);
handles.R3C8.CData=D7;      
handles.R10C8.CData=D7;

% Set 6 Position
A = imread('D6.jpg');
D6=imresize(A,[60 40]);
handles.R3C7.CData=D6;      
handles.R10C9.CData=D6;

% Set 5 Position
A = imread('D5.jpg');
D5=imresize(A,[60 40]);
handles.R3C6.CData=D5;      
handles.R9C10.CData=D5;

% Set 4 Position
A = imread('D4.jpg');
D4=imresize(A,[60 40]);
handles.R8C10.CData=D4;      
handles.R3C5.CData=D4;

% Set 3 Position
A = imread('D3.jpg');
D3=imresize(A,[60 40]);
handles.R3C4.CData=D3;      
handles.R7C10.CData=D3;

% Set 2 Position
A = imread('D2.jpg');
D2=imresize(A,[60 40]);
handles.R3C3.CData=D2;      
handles.R6C10.CData=D2;
%% Clubs
% Set Ace Position
A = imread('CA.jpg');
CA=imresize(A,[60 40]);
handles.R8C6.CData=CA;      
handles.R9C1.CData=CA;

% Set King Position
A = imread('KClubs.jpg');
KClubs=imresize(A,[60 NaN]);
handles.R8C5.CData=KClubs;      
handles.R8C1.CData=KClubs;

% Set Queen Position
A = imread('QClubs.jpg');
QClubs=imresize(A,[60 NaN]);
handles.R8C4.CData=QClubs;      
handles.R7C1.CData=QClubs;

 % Set Jack Position
JC=imread('JClubs.jpg');
JClubs=imresize(JC,[60 NaN]);
handles.R1C0.CData=JClubs;

% Set 10 Position
A = imread('C10.jpg');
C10=imresize(A,[60 40]);
handles.R8C3.CData=C10;      
handles.R6C1.CData=C10;

% Set 9 Position
A = imread('C9.jpg');
C9=imresize(A,[60 40]);
handles.R7C3.CData=C9;      
handles.R5C1.CData=C9;

% Set 8 Position
A = imread('C8.jpg');
C8=imresize(A,[60 40]);
handles.R6C3.CData=C8;      
handles.R4C1.CData=C8;

% Set 7 Position
A = imread('C7.jpg');
C8=imresize(A,[60 40]);
handles.R3C1.CData=C8;      
handles.R5C3.CData=C8;

% Set 6 Position
A = imread('C6.jpg');
C6=imresize(A,[60 40]);
handles.R4C3.CData=C6;      
handles.R2C1.CData=C6;

% Set 5 Position
A = imread('C5.jpg');
C5=imresize(A,[60 40]);
handles.R4C4.CData=C5;      
handles.R2C2.CData=C5;

% Set 4 Position
A = imread('C4.jpg');
C4=imresize(A,[60 40]);
handles.R4C5.CData=C4;      
handles.R2C3.CData=C4;

% Set 3 Position
A = imread('C3.jpg');
C3=imresize(A,[60 40]);
handles.R4C6.CData=C3;      
handles.R2C4.CData=C3;

% Set 2 Position
A = imread('C2.jpg');
C2=imresize(A,[60 40]);
handles.R4C7.CData=C2;      
handles.R2C5.CData=C2;

end
