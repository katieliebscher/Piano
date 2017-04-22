%% Win Column Check

% needs to be made into a function still

load('data')

%%
won=0;
a=1;
sum=0;
sumBlue=0;
sumRed=0;
for i=1:10
    exceed=0;
    k=0;
    while  ~won && ~exceed
        for j=1+k:5+k
            
            tagBox = ['R',num2str(j),'C',num2str(i)];
            
            if handles.tagBox ==1 && BackgroundColor == [0 0 1] % if blue
                sumBlue=sumBlue+1;
            else handles.tagBox ==1 && BackgroundColor == [1 0 0] % if red
                sumRed==sumRed+1;
            end
        end
        
        if sumRed > 4 || sumBlue > 4
            rowFound(a)=1+k;
            colFound(a)=i;
            a=a+1;
            won=1;
        elseif sum < 5
            if k>=5
                exceed=1;
                k=0;
            end
            
        end
        sum=0;
        sumRed=0;
        sumBlue=0;
        k=k+1;
    end
end

if won
    iCol=rowFound
    jCol=colFound
    disp(played)
    disp(['Found at ' num2str(iCol) ',' num2str(jCol)])
else
    disp('No Column Winner')
end
    
    
    
    




