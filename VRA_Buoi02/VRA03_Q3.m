function res = VRA03_Q3()
    fprintf('\n Load du lieu train');
    
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    nTrainLabels = size(lblTrainAll, 1);
    
    %lblType = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    res = zeros(1, 10);
    
    for i=1:nTrainLabels
        type = lblTrainAll(i) + 1;
        temp = res(type);
        temp = temp + 1;
        res(type) = temp;
    end
    res
end