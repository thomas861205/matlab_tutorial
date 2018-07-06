% unmodulated carrier peak amplitude
Ac = 1;

% carrier frequency
fc = 100;

% modulation frequency
fm  = 8;

% modulation index
m = 5;

L = 1000;
t = linspace(0, 1, L);
y = Ac*cos(2*pi*fc*t - m*sin(2*pi*fm*t) );

plot(t, y);
axis([0, 0.5, -2, 2]);