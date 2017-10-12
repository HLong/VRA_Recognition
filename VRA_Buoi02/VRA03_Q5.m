function res = VRA03_Q5( n )
    Mdl = Recognition005_Train();
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
           
    
    nTestImgs = size(imgTestAll, 2);
    if n<0 || n > nTestImgs
        fprintf('\n n ko thuoc 0 - %d', nTestImgs);
        return;
    end
    
    imgTest = imgTestAll(:, n);    
    res = predict(Mdl, imgTest');                
    fprintf('\n res=%d', res);
end

