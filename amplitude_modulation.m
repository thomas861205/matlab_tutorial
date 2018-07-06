% Ac = unmodulated peak carrier amplitude
Ac = 1;

% fc = carrier frequency(Hz)
fc = 100;

% fm = modulation frenquency(Hz)
fm = 1;

% m = modulation index(0 <= m <= 1)
m = 0.7;

max = 2*pi;
x = linspace(0, max, 300);
y = Ac*cos(2*pi*fc*x).*(1 + m*cos(2*pi*fm*x));

subplot(2, 1, 1);
plot(x, Ac*cos(2*pi*fc*x));
axis([0 2*pi -2 2]);

subplot(2, 1, 2);
plot(x, y);

% axis([xmin xmax ymin ymax])
axis([0 2*pi -2 2]);