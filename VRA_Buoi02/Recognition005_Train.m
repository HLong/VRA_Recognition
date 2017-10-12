function Mdl = Recognition005_Train()
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');    
    Mdl = fitcknn(imgTrainAll', lblTrainAll);
end
