function BData_2_image(RData,file_name)
    RData_squeeze = squeeze(RData(:,:,:,1));
    logcomp = 20*log10(RData_squeeze./max(RData_squeeze,[],'all'));
    imshow(logcomp,[])
    colormap gray
    imwrite(logcomp,file_name)
end