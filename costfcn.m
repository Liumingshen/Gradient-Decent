function L = costfcn(x,y,theta)
    L = 0;
    m = length(x);
    error = (x*theta - y).^2;
    L = sum(error);
end