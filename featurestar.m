function [X,mu,sigma] = featurestar(X)
    mu = zeros(1,size(X,2));
    sigma = zeros(1,size(X,2));
    m = size(X,1);
    
    mu = mean(X);
    sigma = std(X);
    X = (X - repmat(mu,[m,1]))./repmat(sigma,[m,1]); 
end