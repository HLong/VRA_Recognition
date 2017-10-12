function res = VRA03_Q4()    
    
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    nTestImages = size(lblTestAll, 1);
    
    %lblType = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    res = zeros(1, 10);
    
    for i=1:nTestImages
        type = lblTestAll(i) + 1;
        temp = res(type);
        temp = temp + 1;
        res(type) = temp;
    end
    
end