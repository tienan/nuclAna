function result = enrichment_1(strand,n)
% strand is the input dataset of one strand, either strand or minus
% n is the 

d_strand = strand(2:length(strand),2)- strand(1:length(strand)-1,2);
i_strand=find(d_strand>n);

start = 1;
for i = 1:length(i_strand)
    if(i==length(i_strand))
        break;
    end
    
    up(i)=strand(start,2);
    down(i) = strand(i_strand(i),2);
    
    len(i)=strand(i_strand(i),2)-strand(start,2);
    count(i)=length(strand(start:i_strand(i)));
    start=i_strand(i)+1;
end
result.up=up;
result.down=down;
result.len=len;
result.count=count;
end