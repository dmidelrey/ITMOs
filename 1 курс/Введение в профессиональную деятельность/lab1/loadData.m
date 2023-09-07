function [angle, time] = loadData(x)
    d = x';
    time = d(:, 1) / 1000;
    angle = d(:, 2) * pi / 180;
end
