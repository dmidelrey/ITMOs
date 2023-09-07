load('data20.mat');
[angle20, time20] = loadData(data);
load('data40.mat');
[angle40, time40] = loadData(data);
load('data60.mat');
[angle60, time60] = loadData(data);
load('data80.mat');
[angle80, time80] = loadData(data);
load('data100.mat');
[angle100, time100] = loadData(data);
figure
plot(time20, angle20, time40, angle40, time60, angle60, time80, angle80, time100, angle100);
legend('v = 20', 'v = 40', 'v = 60', 'v = 80', 'v = 100');
