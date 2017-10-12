function [ featuresDataTrain ] = extractFeaturesHisto( imgDataTrain )
    nBins = 256;
    nNumTrainImages = size(imgDataTrain, 2);
    featuresDataTrain = zeros(nBins, nNumTrainImages);
    for i=1:nNumTrainImages
        featuresDataTrain(:, i) = imhist(imgDataTrain(:, i), nBins);        
    end
end

