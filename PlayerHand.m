function PlayerHand(handles)

A= imread('HA.jpg');
PCard1=imresize(A,[75 50]);
handles.PCard1.CData=PCard1;


A = imread('SA.jpg');
PCard2=imresize(A,[75 50]);
handles.PCard2.CData=PCard2;

A = imread('H4.jpg');
PCard3=imresize(A,[75 50]);
handles.PCard3.CData=PCard3;


A = imread('C3.jpg');
PCard4=imresize(A,[75 50]);
handles.PCard4.CData=PCard4;


A = imread('D3.jpg');
PCard5=imresize(A,[75 50]);
handles.PCard5.CData=PCard5;


A = imread('D9.jpg');
PCard6=imresize(A,[75 50]);
handles.PCard6.CData=PCard6;


A = imread('KSpades.jpg');
PCard7=imresize(A,[75 50]);
handles.PCard7.CData=PCard7;

end

