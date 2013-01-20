function result = enrichment_1(plus,n)
d_plus = plus(2:length(plus),2)- plus(1:length(plus)-1,2);
i_plus=find(d_plus>n);

start = 1;
for i = 1:length(i_plus)
    if(i==length(i_plus))
        break;
    end
    
    interval(i).up=plus(start,2);
    interval(i).down = plus(i_plus(i),2);
    
    len(i)=plus(i_plus(i),2)-plus(start,2);
    count(i)=length(plus(start:i_plus(i)));
    start=i_plus(i)+1;
end
result.interval=interval;

result.len=len;
result.count=count;
end