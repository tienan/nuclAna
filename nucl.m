plus = data(data(:,3)==16,:);
d_plus = plus(2:length(plus),2)- plus(1:length(plus)-1,2);
i_plus=find(d_plus>150);

j=1;
start = 1;
for i = 1:length(i_plus)
    if(i==length(i_plus))
        break;
    end
    
    interval(j)=plus(start,2);j=j+1;
    interval(j)= plus(i_plus(i),2);j=j+1;

    len(i)=plus(i_plus(i),2)-plus(start,2);
    count(i)=length(plus(start:i_plus(i)));
    start=i_plus(i)+1;
    
end

interval = [plus(1,2) plus(i_plus(1)-1,2) interval];
len = [plus(i_plus(1)-1,2)-plus(1,2) len];
count = [length(plus(1:i_plus(1)-1,2)) count];

result_minus = enrichment_1(minus,50);
result_plus = enrichment_1(plus,50);
