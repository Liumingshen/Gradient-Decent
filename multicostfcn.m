function L = multicostfcn(x,y,theta) %定义代价函数；

m = length(y);
L = 0;%初始化
hx = x*theta;%假设函数；
error = (hx - y).^2;
L = 1/(2*m)*sum(error);
end