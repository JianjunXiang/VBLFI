function f = feature_extract(imdist,num)
% imdist: the distorted image
% num   : SAI or MDI , num = 1 is SAI. num = 2 is MDI.
%% cut the image into 256*256 image patch.
    imdist=size8cut(imdist);
    y=preprocess5(imdist);
%% deal with the image patch
    [m n]=size(y);
    if num == 1
        ff = zeros(1,12);
    else 
        ff = zeros(1,18);
    end
    for mm=1:m
        for nn=1:n
%% extract feature from one patch
            Curvelet_domain=fdct_usfft(y{mm,nn},1); %curvelet transform
            f1=gaufit_n1(Curvelet_domain,num); 
            f2=ori_info3(Curvelet_domain,num); 
            f=[f1,f2];       
            ff=ff+f;
        end
    end
    f=ff/(m*n);    
end

