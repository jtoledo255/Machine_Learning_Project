function BData_2_image(RData,file_name)
    RData_squeeze = squeeze(RData(:,:,:,1));
    logcompress = 20*log10(RData_squeeze./max(RData_squeeze,[],'all'));
    imshow(logcompress,[])
    colormap gray
    imwrite(logcompress,file_name)
end