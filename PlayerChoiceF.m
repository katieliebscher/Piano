function [PlayerNum]= PlayerChoiceF(handles,hObject);
% Add up number of turns in order to keep track of whose turn it is
persistent turns

% If statement creates empty turns array if game has just begun
if isempty(turns)
    turns=0;
end

% The number of turns made is brought in from function
turns=turns + 1;




% Determine which player is playing
if mod(turns,2)
    PlayerNum=1;
else 
    PlayerNum=2;

end % ends if statement