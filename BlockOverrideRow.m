function [BlockOptions,BlockCounter] = BlockOverrideRow(handles,hObject)
%This program will begin AFTER THE WINOVERRIDE FUNCTIONS!!!!

load('data');
load('AIChoice');
load('Blocker');
%% Starting Stuff

Blue = [0 1 1];
Red = [1 0 1];
Black = [0 0 0];
sumBlack=0;
sumBlue=0;
sumRed=0;

%% Looking only at the columns

for i=1:10 % i represents rows
    exceed=0;
    k=0;
    while  ~exceed
        for j=1+k:5+k % j represents columns
            tagBox = ['R',num2str(i),'C',num2str(j)];
            if handles.(tagBox).BackgroundColor == Blue
                sumBlue=sumBlue+1;
            elseif handles.(tagBox).BackgroundColor == Red
                sumRed=sumRed+1;
            elseif handles.(tagBox).BackgroundColor == Black
                sumBlack = sumBlack+1;
            end
            
        end
        % Check if player can block the opponent!
        if AIChoice == 1;
            if (sumRed == 4 && sumBlue == 0 && sumBlack == 0) || (sumRed == 3 && sumBlue == 0 && sumBlack == 1)
                % Find the open spot
                for j = 1+k:5+k
                    tagBox = ['R',num2str(i),'C',num2str(j)];
                    if (handles.(tagBox).BackgroundColor ~= Red) && (handles.(tagBox).BackgroundColor ~= Black)
                        BlockOptions(BlockCounter) = tagBox;
                        BlockCounter = BlockCounter + 1;
                    end
                end
            end
        else
            if (sumRed == 0 && sumBlue == 4 && sumBlack == 0) || (sumRed == 0 && sumBlue == 3 && sumBlack == 1)
                for j = 1+k:5+k
                    tagBox = ['R',num2str(i),'C',num2str(j)];
                    if (handles.(tagBox).BackgroundColor ~= Blue) && (handles.(tagBox).BackgroundColor ~= Black)
                        BlockOptions(BlockCounter) = tagBox;
                        BlockCounter = BlockCounter + 1;
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
        k=k+1;
    end
end

save('Blocker','BlockOptions','BlockCounter');