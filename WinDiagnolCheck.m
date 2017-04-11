%% WinDiagnolCheck

load('data')



%% Check Diagnols
sumDiag=zeros(1,22);
b=1;
% diag1Win represents diagnols 1 through 12
diag1WinRow=0;
diag1WinCol=0;
% diag2Win represents diagnols 13 through 22
diag2WinRow=0;
diag2WinCol=0;


%% 1-6
sumRed=0;
sumGreen=0;
sumBlue=0;
won=0;

for m=1:6
    exceed=0;
    k=0;
    while  ~won && ~exceed
        for n=1:5
            i=6+n-m+k;
            j=n+k;
            sumBlue=sumBlue+blueArray(i,j);
            sumGreen=sumGreen+greenArray(i,j);
            sumRed=sumRed+redArray(i,j);
        end
        
        if sumGreen > 4 || sumBlue > 4 || sumRed > 4
            diag1WinRow=i-4;
            diag1WinCol=j-4;
            won=1;
            if greenArray(i,j)==1
                winner='green'
            elseif blueArray(i,j)==1
                winner='blue'
            elseif redArray(i,j)==1
                winner='red'
            end
            disp(['The winner is ' winner])
        end
        k=k+1;
        sum=0;
        sumGreen=0;
        sumBlue=0;
        sumRed=0;
        if k==m
            exceed=1;
        end
    end
end


%% 7-11
sum=0;
sumGreen=0;
sumBlue=0;
sumRed=0;

for m=7:11
    exceed=0;
    k=1;
    while  ~won && ~exceed
        for n=1:5
            i=n+k-1;
            j=n+k+m-7;
            sumGreen=sumGreen+greenArray(i,j);
            sumBlue=sumBlue+blueArray(i,j);
            sumRed=sumRed+redArray(i,j);
        end
        
        if sumGreen > 4 || sumBlue > 4 || sumRed > 4
            diag1WinRow=i-4;
            diag1WinCol=j-4;
            won=1;
            if greenArray(i,j)==1
                winner='green'
            elseif blueArray(i,j)==1
                winner='blue'
            elseif redArray(i,j)==1
                winner='red'
            end
            disp(['The winner is ' winner])
        end
        k=k+1;
        sum=0;
        sumGreen=0;
        sumBlue=0;
        sumRed=0;
        
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
sumGreen=0;
sumRed=0;

for m=12:17
    exceed=0;
    k=5;
    while  ~won && ~exceed
        for n=1:5
            i=k+n-m+12;
            j=16-n-k;
            sumBlue=sumBlue+blueArray(i,j);
            sumGreen=sumGreen+greenArray(i,j);
            sumRed=sumRed+redArray(i,j);
        end
        
        if sumGreen > 4 || sumBlue > 4 || sumRed > 4
            diag2WinRow=i-4;
            diag2WinCol=j+4;
            won=1;
            if greenArray(i,j)==1
                winner='green'
            elseif blueArray(i,j)==1
                winner='blue'
            elseif redArray(i,j)==1
                winner='red'
            end
            disp(['The winner is ' winner])
        end
        k=k+1;
        sum=0;
        sumGreen=0;
        sumBlue=0;
        sumRed=0;
        
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
sumGreen=0;
sumBlue=0;
sumRed=0;

for m=18:22
    exceed=0;
    k=0;
    while ~won && ~exceed
        for n=1:5
            i=n+k;
            j=28-m-k-n;
            sumBlue=sumBlue+blueArray(i,j);
            sumGreen=sumGreen+greenArray(i,j);
            sumRed=sumRed+redArray(i,j);
        end
        
        if sumGreen > 4 || sumBlue > 4 || sumRed > 4
            diag2WinRow=i-4;
            diag2WinCol=j+4;
            won=1;
            if greenArray(i,j)==1
                winner='green'
            elseif blueArray(i,j)==1
                winner='blue'
            elseif redArray(i,j)==1
                winner='red'
            end
            disp(['The winner is ' winner])
        end
        
        k=k+1;
        sum=0;
        sumGreen=0;
        sumBlue=0;
        sumRed=0;
        
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


if diag1WinRow ~= 0
    disp(['Winner is found at ' num2str(diag1WinRow) ',' num2str(diag1WinCol)...
        ' and is within diaganol 1-11'])
elseif diag2WinRow ~0
    disp(['Winner is found at ' num2str(diag2WinRow) ',' num2str(diag2WinCol)....
        ' and is within diagnol 12-22'])
end
    
    
    
    
    




