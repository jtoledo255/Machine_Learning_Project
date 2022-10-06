image_dir = dir('Images/P*.mat');
count = 0;
for i = 1:length(image_dir)
    load(['Images/',image_dir(i).name])
    BData_2_image(US,erase(image_dir(i).name,'.mat'))
end

