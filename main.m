X = load('ex1data1.txt');              %导入数据；
X1 = X(:,1);
y = X(:,2);
x = [ones(length(X1),1) X1]; %为X1增加值为1的一列；
theta = zeros(2,1);

itr = 1500;%迭代次数；
costfcn(x,y,theta);
theta = GD(x,y,theta,itr);
figure(1),plot(X1,y,'rx');       %原始数据散点图；
hold on;plot(x(:,2),x*theta);        %训练结果图；

theta0 = linspace(-10, 10, 100);
theta1 = linspace(-1, 4, 100);

J = zeros(length(theta0), length(theta1));

for i = 1:length(theta0)
    for j = 1:length(theta1)
	  t = [theta0(i); theta1(j)];    
	  J(i,j) = costfcn(x, y, t);
    end
end

J = J';
figure;
surf(theta0, theta1, J)
xlabel('\theta_0'); ylabel('\theta_1');

figure;
contour(theta0, theta1, J, logspace(-4, 8, 100))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
