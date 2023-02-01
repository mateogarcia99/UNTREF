function [R]= calculo_ley_de_masa(densidad,espesor,young,perdida,poisson)
c_0 = 343 ;
m = espesor*densidad ;
B = (young/(1-poisson^2))*((espesor^3)/12);
r0=1.20;
K=((c_0)^2)*densidad;
f_c = (((c_0)^2)/(2*pi))*sqrt(m/B) ;
f_d = (young/(2*pi*densidad))*sqrt(m/B) ;

f = [20,25,31.5,40,50,63,80,100,125,160,200,250,315,400,500,630,800,1000,1250,1600,2000,2500,3150,4000,5000,6300,8000,10000,12500,16000,20000];

ntot=zeros(1,31);
R=zeros(1,31);
tau=zeros(1,31);
TL=zeros(1,31);

for n=1:31
    ntot(n)=perdida+(m/(485*sqrt(f(n))));
    if f(n)<f_c
        R(n)=20*log10(m*f(n))-47;
    end
    if (f_c < f(n)) && (f(n) < f_d)
        R(n)=20*log10((pi*f(n)*m)/(r0*c_0))-10*log10(pi/(4*ntot(n)))+10*log10(f(n)/f_c)+10*log10(1-(f_c/f(n)))-5;
    end

    if f(n) > f_d
        R(n)=20*log10(m*f(n))-47;
    end
    tau(n)=10^(-(R(n)/10));
    TL(n)=10*log10(1/tau(n));
end
end

