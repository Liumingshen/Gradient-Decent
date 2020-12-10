function [theta,L] = multiGD(x,y,theta,u,itr)
    m = length(y);
    
    L = zeros(itr,1);
   
    for i = 1:itr
        error = x*theta - y;
         dL = (1/m)*x'*error;
        theta = theta-u*dL;
        L(i) = multicostfcn(x,y,theta);
    end
end