function WinAndBlockOverride(handles,hObject)
%This is a simplification for the SequenceTool GUI so we don't have tons of
%programs in a line.

WinOverrideColumn(handles,hObject);
WinOverrideRow(handles,hObject);
WinOverrideDiagonal(handles,hObject);
load('Winner');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Tonight, we hook this up to the GUI with the proper syntax
%We want to take the array WinOptions and compare it to our hand, then if
%one matches, it becomes "selection"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BlockOverrideColumn(handles,hObject);
BlockOverrideRow(handles,hObject);
BlockOverrideDiagonal(handles,hObject);
load('Blocker');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%I just don't want to try to connect it, because I don't know the proper
%syntax. 

%This BlockOverride should only happen if WinOverride comes up empty.

%We will use the array 'BlockOptions' and see if any of these match the
%playable hand. 