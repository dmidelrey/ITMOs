simIn = Simulink.SimulationInput('lab4_0');

simIn = simIn.setVariable('kp', 100, 'Workspace','lab4_0');
simIn = simIn.setVariable('ki', 15, 'Workspace','lab4_0');
simIn = simIn.setVariable('kd', 15, 'Workspace','lab4_0');

simIn = simIn.setModelParameter('StartTime', '0', 'StopTime', '10');

h1=figure(1);
xlabel('t, sec');
ylabel('\theta, grad');
set(h1,'name','I');
ax = nexttile;
xlabel(ax, 't, sec');
ylabel(ax, '\theta, grad');
hold on;
simIn = simIn.setVariable('kp', 10, 'Workspace','lab4_0');
simIn = simIn.setVariable('ki', 5, 'Workspace','lab4_0');
simIn = simIn.setVariable('kd', 45, 'Workspace','lab4_0');
simIn = simIn.setVariable('A', 10000, 'Workspace','lab4_0');
data = sim(simIn);
plot(data.tout, data.data);

simIn = simIn.setVariable('A', 0.5, 'Workspace','lab4_0');
data = sim(simIn);
plot(data.tout, data.data);
legend(ax, {'p=10, d=0, i=45', 'p=10, d=0, i=45, A=0.5'}, 'Location', 'southeast');
hold off;
print('z', '-dpng');
