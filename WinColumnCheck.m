%% Win Column Check

load('data')
%%
won=0;
a=1;
sum=0;
sumBlue=0;
sumGreen=0;
sumRed=0;
for i=1:10
    exceed=0;
    k=0;
    while  ~won && ~exceed
        for j=1+k:5+k
            %sum=played(j,i)+sum;
            if greenArray(j,i)==1
                sumGreen=sumGreen+1;
            elseif blueArray(j,i)==1
                sumBlue=sumBlue+1;
            elseif redArray(j,i)==1
                sumRed==sumRed+1;
            end
        end
        
        if sumGreen > 4 || sumRed > 4 || sumBlue > 4
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
        sumGreen=0;
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