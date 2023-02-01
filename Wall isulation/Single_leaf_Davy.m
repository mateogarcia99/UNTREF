function [single_leaf] = Single_leaf_Davy(frequency,density, Young, Poisson, thickness,lossfactor, length, width)
po = 1.18 ; 
c0 = 343 ; 
cos21Max = 0.9;
surface_density = density * thickness;
critical_frequency = sqrt(12 * density * (1 - Poisson ^ 2) / Young) * c0 ^ 2 / (2 * thickness *pi);
normal = po * c0 / (pi * frequency * surface_density);
normal2 = normal * normal;
e = 2 * length * width / (length + width);
cos2l = c0 / (2 * pi * frequency * e);
if cos2l > cos21Max
cos2l = cos21Max;
end
tau1 = normal2 * log((normal2 + 1) / (normal2 + cos2l));
ratio = frequency / critical_frequency;
r = 1 - 1 / ratio;
if r < 0
r = 0;
end
G = sqrt(r);
rad = Sigma(frequency,G, width, length);
rad2 = rad * rad;
netatotal = lossfactor + rad * normal;
z = 2 / netatotal;
y = atan(z) - atan(z * (1 - ratio));
tau2 = normal2 * rad2 * y / (netatotal * 2 * ratio);
tau2 = tau2 * shear(frequency, density, Young, Poisson, thickness);
if frequency < critical_frequency
tau = tau1 + tau2;
else
tau = tau2;
end
single_leaf = -10 * log10(tau);
end