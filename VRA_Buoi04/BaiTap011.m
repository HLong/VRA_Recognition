function BaiTap011()

    strData = './train-images.idx3-ubyte';
    strLabel = './train-labels.idx1-ubyte';        
    [imgDataTrain, lblDataTrain] = loadData(strData, strLabel);
    
    featuresDataTrain = extractFeaturesHisto(imgDataTrain);
    
    Mdl = fitcknn(featuresDataTrain', lblDataTrain);
    
    strData = './t10k-images.idx3-ubyte';
    strLabel = './t10k-labels.idx1-ubyte';    
    [imgDataTest, lblDataTest]  = loadData(strData, strLabel);
    
    featuresDataTest = extractFeaturesHisto(imgDataTest);
    
    lblResult = predict(Mdl, featuresDataTest');
    nResult = (lblDataTest == lblResult);
    nCount = sum(nResult);
    
    fprintf('\n So luong mau dung: %d', nCount);
end

