function Recognition005_Pred()
    Mdl = Recognition005_Train();
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');        
    
    nTestImgs = size(imgTestAll, 2);
    nNumber = randi([1, nTestImgs]);
    
    imgTest = imgTestAll(:, nNumber);
    lblPredictTest = predict(Mdl, imgTest');
    
    lblImageTest = lblTestAll(nNumber);
    
    figure;
    img2D = reshape(imgTest, 28, 28);
    imshow(img2D);
    title(lblPredictTest);
    
    if(lblPredictTest == lblImageTest)
        fprintf('\n Ket qua dung');
    else
        fprintf('\n Ket qua sai');
    end
end