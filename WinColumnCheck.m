function [winColumn]=WinColumnCheck(handles,hObject)
%% Win Column Check

% needs to be made into a function still

load('data')

%%
won=0;
a=1;
Blue = [0 1 1];
Red = [1 0 1];
Black = [0 0 0];
sum=0;
sumBlue=0;
sumRed=0;
sumBlack=0;
for i=1:10
    exceed=0;
    k=0;
    while  ~won && ~exceed
        for j=1+k:5+k
            
            tagBox = ['R',num2str(j),'C',num2str(i)];
            
            if handles.(tagBox).BackgroundColor == Blue
                sumBlue=sumBlue+1;
            elseif handles.(tagBox).BackgroundColor == Red
                sumRed=sumRed+1;
            elseif handles.(tagBox).BackgroundColor == Black
                sumBlack = sumBlack+1;
            end
        end
        
        if sumRed > 4 || sumBlue > 4 || (sumBlue == 4 && sumBlack == 1) || (sumRed == 4 && sumBlack == 1)
            rowFound(a)=1+k;
            colFound(a)=i;
            a=a+1;
            won=1;
            if sumBlue>4 || (sumBlue == 4 && sumBlack ==1)
                winner='AI One';
            else
                winner='AI Two';
            end
        elseif sum < 5
            if k>=5
                exceed=1;
                k=0;
            end
            
        end
        sum=0;
        sumRed=0;
        sumBlue=0;
        sumBlack=0;
        k=k+1;
    end
end

if won
    iCol=rowFound;
    jCol=colFound;
    disp(['Found at ' num2str(iCol) ',' num2str(jCol)]);
    winColumn=1;
    save('winner','winner');
else
    disp('No Column Winner')
    winColumn=0;
end
    