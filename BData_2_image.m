function BData_2_image(RData,file_name)
    RData_squeeze = squeeze(RData(:,:,:,1));
    logcompress = 20*log10(RData_squeeze./max(RData_squeeze,[],'all'));
    imshow(logcompress,[])
    maxI = max(logcompress,[],'all');
    minI = min(logcompress,[],'all');
    colormap gray
    %imwrite(mat2gray(logcompress,[minI maxI]),['Images/',file_name,'.png'])
    imwrite(mat2gray(logcompress,[minI maxI]),['Machine_Learning_Project/',file_name,'.png'])
end