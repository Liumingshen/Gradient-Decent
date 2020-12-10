function [theta,L] = GD(x,y,theta,itr)
    u = 0.01;
    m = length(y);
    L = zeros(itr,1);
    for i = 1:itr
        DL = 1/m*x'*(x*theta-y);
        theta = theta-u*DL;
        L = costfcn(x,y,theta);
    end
end