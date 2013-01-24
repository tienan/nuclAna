plus = data(data(:,3)==16,:);
d_plus = plus(2:length(plus),2)- plus(1:length(plus)-1,2);
i_plus=find(d_plus>150);

j=1;
for i = 1:length(i_plus)
    if(i==length(i_plus))
        break;
    end
    interval(j)=plus(i_plus(i)+1,2);j=j+1;
    interval(j)= plus(i_plus(i+1),2);j=j+1;
    count(i)=length(plus(i_plus(i)+1:i_plus(i+1)-1));
    
end
interval = [plus(1,2) plus(i_plus(1)-1,2) interval];
len = [plus(i_plus(1)-1,2)-plus(1,2) interval(2:2:length(interval)) - interval(1:2:length(interval)-1)];
count = [length(plus(1:i_plus(1)-1,2)) count];

[c,l] = wavedec(s,5,'sym4');
a5 = wrcoef('a',c,l,'sym4',5);

[ibx ctrs]=kmeans(data(:,1),100,'emptyaction','drop');