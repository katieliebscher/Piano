function checkOpenings = openCheck(handles);
counter = 1;
for iRow = 1:10
    for iCol = 1:10 %Read this like a book
        tagOfBox = ['R',num2str(iRow),'C',num2str(iCol)];
        checkOpenings(counter).loc = tagOfBox;
        if handles.(tagOfBox).BackgroundColor == [0.9020 0.7804 0.2510]
            checkOpenings(counter).open = 1;
        else
            checkOpenings(counter).open = 0;
        end
        counter = counter + 1;
    end
end

