function L = multicostfcn(x,y,theta) %������ۺ�����

m = length(y);
L = 0;%��ʼ��
hx = x*theta;%���躯����
error = (hx - y).^2;
L = 1/(2*m)*sum(error);
end