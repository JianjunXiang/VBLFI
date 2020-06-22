This is the MATLAB implementation of VBLFI method, which is a blind light field image quality assessment method . The method is described in:

J. Xiang, M. Yu, H. Chen, H. Xu, Y. Song and G. Jiang, "VBLFI: Visualization-Based Blind Light Field Image Quality Assessment," 
2020 IEEE International Conference on Multimedia and Expo (ICME), London, United Kingdom, 2020, pp. 1-6, 
doi: 10.1109/ICME46284.2020.9102963.

=======================================================================
An exmaple is provided to demonstrate how to use the package
Please run demo.m

If you have any questions, you can contact to 1811082122@nbu.edu.cn
=======================================================================

MATLAB files: demo.m, feature_extract.m, gaufit_n1.m, kurtosis2.m, ori_info3.m, size8cut.m, preprocess5.m and fdct_usfft_matlab folder 
which is original curvelet transformation from "Fast Discrete Curvelet Transforms"(available at : http://www.curvelet.org) and 

L. Liu, H. Dong, H. Huang, and A. C. Bovik, "No-reference image quality assessment in curvelet domain". 
Signal Processing: Image Communication, 2014. 

As an example, the LFI scene "LN_Flowers_50.bmp" from Win5-LID database. More details, please refer to  
Likun Shi, Shengyang Zhao, Wei Zhou and Zhibo Chen "Perceptual Evaluation of Light Field Image".
=======================================================================

Note that:
I am sorry that the data in my paper is wrong, it appears on the Table 3 in the paper "VBLFI: Visualization-Based Blind Light Field Image Quality Assessment",
the RMSE of our VBLFI method on the Win5-LID database is 0.3805 instead of 0.3505. 
At the same time, I re-verify all relevant data again , the rest of the data is correct. I'm sorry for this error, but for scientific rigor, I pointed out my error and apologized.