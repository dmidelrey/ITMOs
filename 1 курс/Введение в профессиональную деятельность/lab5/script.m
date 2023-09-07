simIn = Simulink.SimulationInput('lab5_2');
set_param('lab5_2/x', 'Value', '1');
set_param('lab5_2/y', 'Value', '0');

data1 = sim(simIn);

set_param('lab5_2/x', 'Value', '0');
set_param('lab5_2/y', 'Value', '1');

data2 = sim(simIn);

set_param('lab5_2/x', 'Value', '-1');
set_param('lab5_2/y', 'Value', '0');

data3 = sim(simIn);

set_param('lab5_2/x', 'Value', '0');
set_param('lab5_2/y', 'Value', '-1');

data4 = sim(simIn);


plot(data1.x, data1.y, data2.x, data2.y, data3.x, data3.y, data4.x, data4.y);