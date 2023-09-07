sim('models/lab2.slx', 1)
sim('models/lab2_pi.slx', 10)
sim('models/lab2_2pi.slx', 10)
sim('models/lab2_3pi.slx', 10)

load('data/theta.mat')
load('data/i.mat')

load('data/theta_pi.mat')
load('data/theta_2pi.mat')
load('data/theta_3pi.mat')

I = i';
T = theta';
T_pi = theta_pi';
T_2pi = theta_2pi';
T_3pi = theta_3pi';

plot(I(:, 1), I(:, 2));
print('images/I', '-dpng')

plot(T(:, 1), T(:, 2));
print('images/theta', '-dpng')

plot(T_pi(:, 1), T_pi(:, 2));
print('images/theta_pi', '-dpng');

plot(T_2pi(:, 1), T_2pi(:, 2));
print('images/theta_2pi', '-dpng');

plot(T_3pi(:, 1), T_3pi(:, 2));
print('images/theta_3pi', '-dpng');