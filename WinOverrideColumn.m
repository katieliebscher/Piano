function [WinOptions,WinCounter] = WinOverrideColumn(handles,hObject)
load('data');
load('AIChoice');
%% Starting Stuff

Blue = [0 1 1];
Red = [1 0 1];
Black = [0 0 0];
sumBlue=0;
sumRed=0;
sumBlack = 0;
WinOptions(1) = 0; %This is the vector that holds the tagnames for every square
%a player can win! %%%%%%% YOU NEED THE FIRST TERM TO BE ZERO FOR THIS TO
%WORK
WinCounter = 1; %Counter to increase the WinOption vector

%% Looking only at the columns

for i=1:10 % i represents columns
    exceed=0;
    k=0;
    while  ~exceed
        for j=1+k:5+k % j represents rows
            tagBox = ['R',num2str(j),'C',num2str(i)];
            if handles.(tagBox).BackgroundColor == Blue
                sumBlue=sumBlue+1;
            elseif handles.(tagBox).BackgroundColor == Red
                sumRed=sumRed+1;
            elseif handles.(tagBox).BackgroundColor == Black
                sumBlack = sumBlack+1;
            end
            
        end
        % Check if player can win!
        if AIChoice == 1;
            if (sumRed == 0 && sumBlue == 4 && sumBlack == 0) || (sumRed == 0 && sumBlue == 3 && sumBlack == 1)
                % Find the open spot
                for j = 1+k:5+k
                    tagBox = ['R',num2str(j),'C',num2str(i)];
                    if (handles.(tagBox).BackgroundColor ~= Blue) && (handles.(tagBox).BackgroundColor ~= Black)
                        WinOptions(WinCounter) = tagBox;
                        WinCounter = WinCounter + 1;
                    end
                end
            end
        else
            if (sumRed == 4 && sumBlue == 0 && sumBlack == 0) || (sumRed == 3 && sumBlue == 0 && sumBlack == 1)
                for j = 1+k:5+k
                    tagBox = ['R',num2str(j),'C',num2str(i)];
                    if (handles.(tagBox).BackgroundColor ~= Red) && (handles.(tagBox).BackgroundColor ~= Black)
                        WinOptions(WinCounter) = tagBox;
                        WinCounter = WinCounter + 1;
                    end
                end
            end
        end
        
        
        if k>=5
            
            exceed=1;
            
            k=0;
            
        end
        sumRed=0;
        sumBlue=0;
        sumBlack = 0;
        k=k+1;
    end
end

save('Winner','WinOptions','WinCounter');