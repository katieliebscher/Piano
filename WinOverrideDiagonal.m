function WinOverrideDiagonal(handles,hObject)

load('data');
load('AIChoice');
load('Winner');

%% set parameters
Blue = [0 1 1];
Red = [1 0 1];
Black = [0 0 0];
sumBlack=0;
sumBlue = 0;
sumRed=0;

%% 1-6
for m=1:6
    exceed=0;
    k=0;
    while ~exceed
        for n=1:5
            i=6+n-m+k;  % i represents rows
            j=n+k;      % j represents columns
            tagBox = ['R',num2str(i),'C',num2str(j)];
           if handles.(tagBox).BackgroundColor == Blue
                sumBlue=sumBlue+1;
            elseif handles.(tagBox).BackgroundColor == Red
                sumRed=sumRed+1;
            elseif handles.(tagBox).BackgroundColor == Black
                sumBlack = sumBlack+1;
           end 
        end
        if AIChoice == 1
            if (sumRed == 0 && sumBlue == 4 && sumBlack == 0) || (sumRed == 0 && sumBlue == 3 && sumBlack == 1)
                % Find the open spot
                for n = 1:5
                    i=6+n-m+k;  % i represents rows
                    j=n+k;      % j represents columns
                    tagBox = ['R',num2str(i),'C',num2str(j)];
                    if (handles.(tagBox).BackgroundColor ~= Blue) 
                        if (handles.(tagBox).BackgroundColor ~= Black)
                            WinCounter = WinCounter + 1;
                            Win(WinCounter).WinOptions = tagBox;
                        
                        end
                    end 
                end 
            end
        else
            if (sumRed == 4 && sumBlue == 0 && sumBlack == 0) || (sumRed == 3 && sumBlue == 0 && sumBlack == 1)       
                % Find the open spot
                for n = 1:5
                    i=6+n-m+k;  % i represents rows
                    j=n+k;      % j represents columns
                    tagBox = ['R',num2str(i),'C',num2str(j)]; 
                  if (handles.(tagBox).BackgroundColor ~= Red) 
                      if (handles.(tagBox).BackgroundColor ~= Black)
                          WinCounter = WinCounter + 1;
                          Win(WinCounter).WinOptions = tagBox;
                       
                      end
                  end      
                end        
            end     
        end
        k=k+1;
        sumBlue=0;
        sumRed=0;
        sumBlack=0;        
        if k==m
            exceed=1;
        end
    end    
end

%% 7-11
sumBlue=0;
sumRed=0;
sumBlack=0;
for m=7:11
    exceed=0;
    k=1;
    while  ~exceed
        for n=1:5
            i=n+k-1; % i represents row
            j=n+k+m-7; % j represents column
            tagBox = ['R',num2str(i),'C',num2str(j)];
           if handles.(tagBox).BackgroundColor == Blue
                sumBlue=sumBlue+1;
            elseif handles.(tagBox).BackgroundColor == Red
                sumRed=sumRed+1;
            elseif handles.(tagBox).BackgroundColor == Black
                sumBlack = sumBlack+1;
           end 
        end
        if AIChoice == 1
            if (sumRed == 0 && sumBlue == 4 && sumBlack == 0) || (sumRed == 0 && sumBlue == 3 && sumBlack == 1)
                % Find the open spot
                for n = 1:5
                    i=n+k-1;
                    j=n+k+m-7;
                    tagBox = ['R',num2str(i),'C',num2str(j)];
                   if (handles.(tagBox).BackgroundColor ~= Blue) 
                       if (handles.(tagBox).BackgroundColor ~= Black)
                           WinCounter = WinCounter + 1;
                           Win(WinCounter).WinOptions = tagBox;
                       
                       end
                   end 
                end 
            end
        else
            if (sumRed == 4 && sumBlue == 0 && sumBlack == 0) || (sumRed == 3 && sumBlue == 0 && sumBlack == 1)
                % Find the open spot
                for n = 1:5
                    i=n+k-1;
                    j=n+k+m-7;
                    tagBox = ['R',num2str(i),'C',num2str(j)];         
                    if (handles.(tagBox).BackgroundColor ~= Red) 
                        if (handles.(tagBox).BackgroundColor ~= Black)
                            WinCounter = WinCounter + 1;
                            Win(WinCounter).WinOptions = tagBox;
                        
                        end
                    end
                end
            end
        end
        k=k+1;
        sumBlue=0;
        sumRed=0;
        sumBlack = 0;
        switch m
            case 7
                max=6;
            case 8
                max=5;
            case 9
                max=4;
            case 10
                max=3;
            case 11
                max=2;
            case 12
                max=1;     
        end
        if k==max
            exceed=1; 
        end 
    end
end

%% 12-17
sumBlue=0;
sumRed=0;
sumBlack=0;
for m=12:17
    exceed=0;
    k=5;
    while ~exceed
        for n=1:5
            i=k+n-m+12; %row
            j=16-n-k; %column
            tagBox = ['R',num2str(i),'C',num2str(j)];
           if handles.(tagBox).BackgroundColor == Blue
                sumBlue=sumBlue+1;
            elseif handles.(tagBox).BackgroundColor == Red
                sumRed=sumRed+1;
            elseif handles.(tagBox).BackgroundColor == Black
                sumBlack = sumBlack+1;
           end 
        end
        if AIChoice == 1
            if (sumRed == 0 && sumBlue == 4 && sumBlack == 0) || (sumRed == 0 && sumBlue == 3 && sumBlack == 1)
                % Find the open spot
                for n = 1:5
                    i=k+n-m+12;
                    j=16-n-k;
                    tagBox = ['R',num2str(i),'C',num2str(j)];
                    if (handles.(tagBox).BackgroundColor ~= Blue) 
                        if (handles.(tagBox).BackgroundColor ~= Black)
                            WinCounter = WinCounter + 1;
                            Win(WinCounter).WinOptions = tagBox;
                       
                        end
                    end 
                end 
            end
        else
            if (sumRed == 4 && sumBlue == 0 && sumBlack == 0) || (sumRed == 3 && sumBlue == 0 && sumBlack == 1)
                % Find the open spot
                for n = 1:5
                    i=k+n-m+12;
                    j=16-n-k;
                    tagBox = ['R',num2str(i),'C',num2str(j)];
                    if (handles.(tagBox).BackgroundColor ~= Red)
                        if (handles.(tagBox).BackgroundColor ~= Black)
                            WinCounter = WinCounter + 1;
                            Win(WinCounter).WinOptions = tagBox;
                       
                        end
                    end
                end          
            end
        end
        k=k+1;
        sumBlue=0;
        sumRed=0;
        sumBlack=0;
        switch m
            case 12
                max=6;
            case 13
                max=7;
            case 14
                max=8;
            case 15
                max=9;
            case 16
                max=10;   
            case 17
                max=11;   
        end
        if k==max
            exceed=1;    
        end
    end
end

%% 18-22
sumBlue=0;
sumRed=0;
sumBlack=0;
for m=18:22
    exceed=0;
    k=0;
    while ~exceed
        for n=1:5
            i=n+k; %row
            j=28-m-k-n; %column
            tagBox = ['R',num2str(i),'C',num2str(j)];
           if handles.(tagBox).BackgroundColor == Blue
                sumBlue=sumBlue+1;
            elseif handles.(tagBox).BackgroundColor == Red
                sumRed=sumRed+1;
            elseif handles.(tagBox).BackgroundColor == Black
                sumBlack = sumBlack+1;
           end 
        end
        if AIChoice == 1
            if (sumRed == 0 && sumBlue == 4 && sumBlack == 0) || (sumRed == 0 && sumBlue == 3 && sumBlack == 1)
                % Find the open spot
                for n = 1:5
                    i=n+k;
                    j=28-m-k-n;
                    tagBox = ['R',num2str(i),'C',num2str(j)];
                    if (handles.(tagBox).BackgroundColor ~= Blue) 
                        if (handles.(tagBox).BackgroundColor ~= Black)
                            WinCounter = WinCounter + 1;
                            Win(WinCounter).WinOptions = tagBox;
                        
                        end
                    end 
                end 
            end
        else
            if (sumRed == 4 && sumBlue == 0 && sumBlack == 0) || (sumRed == 3 && sumBlue == 0 && sumBlack == 1)
                % Find the open spot
                for n = 1:5
                    i=n+k;
                    j=28-m-k-n;
                    tagBox = ['R',num2str(i),'C',num2str(j)]; 
                    if (handles.(tagBox).BackgroundColor ~= Red) 
                        if (handles.(tagBox).BackgroundColor ~= Black)
                            WinCounter = WinCounter + 1;
                            Win(WinCounter).WinOptions = tagBox;
                        
                        end
                    end 
                end 
            end
        end
            k=k+1;
            sumBlue=0;
            sumRed=0;
            sumBlack =0;
            switch m
                case 18
                    max=5;
                case 19
                    max=4;
                case 20
                    max=3;
                case 21
                    max=2;
                case 22
                    max=1;     
            end
            if k==max
                exceed=1; 
            end 
        end
    end

save('Winner','Win','WinCounter');