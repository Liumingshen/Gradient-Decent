X = load('ex1data2.txt');
%X1 = [X(:,1) X(:,2)];
X1 = featurestar(X);
x = [ones(length(X),1) X1(:,1) X1(:,2)];
y = X1(:,3);
theta = zeros(3,1);
figure,scatter3(x(:,2),x(:,3),y,'r');

u = 0.1;
itr = 50;
[theta,L] = multiGD(x,y,theta,u,itr);
%L = multicostfcn(x,y,theta);
figure,plot(L);
