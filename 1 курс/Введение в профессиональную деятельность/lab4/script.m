simIn = Simulink.SimulationInput('lab4_0');

simIn = simIn.setVariable('kp', 100, 'Workspace','lab4_0');
simIn = simIn.setVariable('ki', 15, 'Workspace','lab4_0');
simIn = simIn.setVariable('kd', 15, 'Workspace','lab4_0');
simIn = simIn.setVariable('A', 100000, 'Workspace','lab4_0');
simIn = simIn.setModelParameter('Timeout', 2);

h1=figure(1);
xlabel('t, sec');
ylabel('\theta, grad');
set(h1,'name','P');
ax = nexttile;
xlabel(ax, 't, sec');
ylabel(ax, '\theta, grad');
hold on;
legends = [];
for p = 100:100:500
    simIn = simIn.setVariable('kp', p, 'Workspace','lab4_0');
    data = sim(simIn);
    p = plot(data.tout, data.data);
end
legend(ax, {'p=100, d=15, i=15', 'p=200, d=15, i=15', 'p=300, d=15, i=15', 'p=400, d=15, i=15', 'p=500, d=15, i=15'}, 'Location', 'southeast');
hold off;
print('P', '-dpng');

h1=figure(2);
set(h1,'name','D');
ax = nexttile;
xlabel(ax, 't, sec');
ylabel(ax, '\theta, grad');
hold on;
legends = [];
simIn = simIn.setVariable('kp', 100, 'Workspace','lab4_0');
for d = 0:15:60
    simIn = simIn.setVariable('kd', d, 'Workspace','lab4_0');
    data = sim(simIn);
    p = plot(data.tout, data.data);
end
legend(ax, {'p=100, d=0, i=15', 'p=100, d=15, i=15', 'p=100, d=30, i=15', 'p=100, d=45, i=15', 'p=100, d=60, i=15'}, 'Location', 'southeast');
hold off;
print('D', '-dpng');

h1=figure(3);
xlabel('t, sec');
ylabel('\theta, grad');
set(h1,'name','I');
ax = nexttile;
xlabel(ax, 't, sec');
ylabel(ax, '\theta, grad');
hold on;
legends = [];
simIn = simIn.setVariable('kd', 15, 'Workspace','lab4_0');
for i = 0:15:60
    simIn = simIn.setVariable('ki', i, 'Workspace','lab4_0');
    data = sim(simIn);
    p = plot(data.tout, data.data);
end
legend(ax, {'p=100, d=15, i=0', 'p=100, d=15, i=15', 'p=100, d=15, i=30', 'p=100, d=15, i=45', 'p=100, d=15, i=60'}, 'Location', 'southeast');
hold off;
print('I', '-dpng');
