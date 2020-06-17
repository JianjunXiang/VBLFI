function feature=ori_info3(c,num)
l=length(c);

lv=l-1;
ll=length(c{lv});
ll=ll/4;
ori=zeros(1,2*ll);
for ii=1:2*ll
    ori(ii)=mean(abs(c{lv}{ii}(:)));
end
ori_1=ori(1:ll);
ori_2=ori(ll+1:ll*2);
k1=kurtosis2(ori_1);
k2=kurtosis2(ori_2);
other=ori;
anisotropy=sqrt(var(other))/mean(other);
if num == 1
    mean_k=(k1+k2)/2;
else
    mean_k = k2;
end
feature=[mean_k anisotropy];
end


