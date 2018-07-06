fs = 1000;      % sampling frequency
T = 1/fs;       % sampling period
L = 100;       % data points
t = (0: L-1)*T; % data length = L/fs

fy = 20; % f = 20Hz
y = sin(2*pi*fy*t);

Y = fft(y, L)/L;
f = fs*linspace(0, 1, L);

subplot(2, 1, 1);
plot(t, y);

subplot(2, 1, 2);
plot(f, abs(Y) );