function [rad] = Sigma(freq, G, width, length)
c0 = 343 ; 
w = 1.3;
beta = 0.234;
n = 2;
S = length * width;
U = 2 * (length + width);
twoa = 4 * S / U;
k = 2 * pi * freq / c0;
f = w * sqrt(pi / (k * twoa));
if f > 1
f = 1;
end
h = 1 / (sqrt(k * twoa / pi) * 2 / 3 - beta);
q = 2 * pi / (k * k * S);
qn = q ^ n;
if G < f
alpha = h / f - 1;
xn = (h - alpha * G) ^ n;
else
xn = G ^ n;
end
rad = (xn + qn)^(-1 / n);
end