%% Win Row Check

load('data')
%%
exceed=0;
sum=0;
won=0;
a=1;
sumGreen=0;
sumRed=0;
sumBlue=0;

for j=1:10
    k=0;
    exceed=0;
    while  ~won && ~exceed
        for i=1+k:5+k
            %sum=played(j,i)+sum;
            if greenArray(j,i)==1
                sumGreen=sumGreen+1;
            elseif blueArray(j,i)==1
                sumBlue=sumBlue+1;
            elseif redArray(j,i)==1
                sumRed==sumRed+1;
            end
        end
        
        if sumRed > 4 || sumGreen > 4 || sumBlue >4
            rowFound(a)=j;
            colFound(a)=1+k;
            if sumGreen > 4
                winner='Green'
            elseif sumBlue > 4
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
        sumGreen=0;
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

