simIn = Simulink.SimulationInput('lab5_2');
data1 = sim(simIn);
plot(data1.x, data1.y);