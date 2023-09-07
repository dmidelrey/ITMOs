sim('models/lab3_50.slx', 2)
sim('models/lab3_100.slx', 2)
sim('models/lab3_150.slx', 2)

load('data/k_50.mat')
load('data/k_100.mat')
load('data/k_150.mat')

K_50 = k_50';
K_100 = k_100';
K_150 = k_150';

plot(K_50(:, 1), K_50(:, 2));
print('images/k_50', '-dpng')

plot(K_100(:, 1), K_100(:, 2));
print('images/k_100', '-dpng')

plot(K_150(:, 1), K_150(:, 2));
print('images/k_150', '-dpng')

plot(K_50(:, 1), K_50(:, 2), K_100(:, 1), K_100(:, 2), K_150(:, 1), K_150(:, 2));
legend('p = 50', 'p = 100', 'p = 150');
print('images/all', '-dpng')