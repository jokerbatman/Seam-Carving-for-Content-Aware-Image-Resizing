clc 
clear all
%%
I = im2double(imread('7.jpg'));
no_rows =100;
no_cols = 100;
I1=I;
I_O=I;

%%
for k = 1:no_rows
    seam_horizontal = horizontal_seam_detection(I);
    I = remove_horizontal_seam(I,seam_horizontal);
end
I_HOR=I;
I = permute(I,[2 1 3]);
for k = 1:no_cols
    I = remove_horizontal_seam(I,horizontal_seam_detection(I));
end
J = permute(I,[2 1 3]);

figure(1)
subplot(2,2,1),imshow(I_O)
subplot(2,2,2),imshow(J)
subplot(2,2,3),imshow(I_HOR)
subplot(2,2,4),imshow(J)

