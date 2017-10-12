function [ imgTrainAll, lblTrainAll ] = loadTrainingDataset()
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
end

