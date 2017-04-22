%% Win Row Check

% needs to be made into a function still

load('data')

%%
exceed=0;
sum=0;
won=0;
a=1;
sumRed=0;
sumBlue=0;

for j=1:10
    k=0;
    exceed=0;
    while  ~won && ~exceed
        for i=1+k:5+k

            tagBox = ['R',num2str(j),'C',num2str(i)];
            
            if handles.tagBox ==1 && BackgroundColor == [0 0 1] % if blue
                sumBlue=sumBlue+1;
            else handles.tagBox ==1 && BackgroundColor == [1 0 0] % if red
                sumRed==sumRed+1;
            end
        end
        
        if sumRed > 4 || sumBlue > 4
            rowFound(a)=j;
            colFound(a)=1+k;
            if sumBlue > 4
                winner='Blue'
            elseif sumRed > 4
                winner='Red'
            end
            disp(['Winner is ' winner])
            won=1;
            
            a=a+1;
        end
        
        if k>=5
            exceed=1;
            k=0;
        end
        
        sum=0;
        sumRed=0;
        sumBlue=0;
        k=k+1;
    end
end

if won
    iRow=rowFound
    jRow=colFound
    disp(played)
    disp(['Row Win Found at ' num2str(iRow) ',' num2str(jRow)])
else
    disp('No Row Winner')
end
