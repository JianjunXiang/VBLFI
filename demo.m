%%VBLFI
% clear all;close all;clc;
%imread LFI
addpath(genpath('fdct_usfft_matlab'));
LFI = imread('LN_Flowers_50.bmp');
%MLI -> U*V*S*T SAIs
LF4D = permute(reshape(LFI,[9, 434, 9, 625,3]),[1,3,2,4,5]);
LF4D = LF4D(:,:,3:end-2,3:end-2,:); %Remove the shadow around SAI
%SAIs' feature extraction
[u,v,s,t,~] = size(LF4D);
LF_Squen = zeros(s,t,u*v);
SAI_num = 0;
tic
for uu = 1:u
    for vv = 1:v
        SAI_num = SAI_num + 1;
        SAI = rgb2gray(squeeze(LF4D(uu,vv,:,:,:)));
        SAI_features(SAI_num,:) = feature_extract(SAI,1);
        LF_Squen(:,:,SAI_num) = SAI;
    end
end
%MDI's feature extraction
for Row = 1:u
    DIA_Squen(:,:,(Row-1)*8+1:Row*8) = abs(LF_Squen(:,:,(Row-1)*9+1:(Row-1)*9+8)-LF_Squen(:,:,(Row-1)*9+2:(Row-1)*9+9));
end
MDI = squeeze(mean(abs(DIA_Squen),3));
MDI_features = feature_extract(MDI,2);
SAIs_features = mean(SAI_features);
% final feature
final_feat_vec = [SAIs_features,MDI_features];
%predict score
load Win5_LID_model.mat
score = svmpredict(ones(1,1),final_feat_vec,Win5_LID_model);
toc