function VRA03_Q1(n)
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    nTrainImages = size(imgTrainAll, 2);
    if(n < 0 || n > nTrainImages)
        fprintf('\n %d ko thuoc doan 1 - %d', n, nTrainImages);
        return;
    end
    
    figure;
    img = imgTrainAll(:, n);
    img2D = reshape(img, 28, 28);
    strLabelImage = num2str(lblTrainAll(n));
    imshow(img2D);
    title(strLabelImage);
end