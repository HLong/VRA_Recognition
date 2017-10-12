function res = VRA03_Q7b()
    Mdl = Recognition005_Train();
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');        
    
    nTestImgs = size(imgTestAll, 2);
    imgTestAll = imgTestAll';
    res = zeros(10, 10);
    for i=1:nTestImgs
        imgTest = imgTestAll(i, :);
        lblPredictTest = predict(Mdl, imgTest);
        lblImageTest = lblTestAll(i);
        fprintf('\n %d - %d', lblPredictTest, lblImageTest);
        res(lblImageTest + 1, lblPredictTest + 1) = res(lblImageTest + 1, lblPredictTest + 1) + 1;
    end                              
    res
end

