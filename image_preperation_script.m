image_dir = dir('Images/P*.mat');
count = 0;
for i = 1:length(image_dir)
    load(['Images/',image_dir(i).name])
    %BData_2_image(US,erase(image_dir(i).name,'.mat'))
    RData_squeeze = squeeze(US(:,:,:,1));
    logcompress = 20*log10(RData_squeeze./max(RData_squeeze,[],'all'));
    imshow(logcompress,[])
    maxI = max(logcompress,[],'all');
    minI = min(logcompress,[],'all');
    colormap gray
    imwrite(mat2gray(logcompress),['Images/',erase(image_dir(i).name,'.mat'),'.png'])
end

