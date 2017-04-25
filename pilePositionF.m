function pilePositionF(handles,hObject);
persistent pilePosition
% If statement creates empty turns array if game has just begun
if isempty(pilePosition)
    pilePosition=15;
end

save('pilePosition','pilePosition');