% unmodulated carrier peak amplitude
Ac = 1;

% carrier frequency
fc = 100;

% modulation frequency
fm  = 5;

% modulation index
m = 2;

L = 200;
t = (0: L-1)/fc;
y = Ac*cos(2*pi*fc*t - m*sin(2*pi*fm*t) );

plot(t, y);
%axis([0, L/fc, 0, 2]);