function [R] = calculo_sharp(densidad,espesor,young,perdida,poisson)

c_0 = 343 ;
m = espesor*densidad ;
B = (young/(1-poisson^2))*((espesor^3)/12);
r0=1.20;
K=((c_0)^2)*densidad;
f_c = (((c_0)^2)/(2*pi))*sqrt(m/B) ;
f_d = (young/(2*pi*densidad))*sqrt(m/B) ;

f = [20,25,31.5,40,50,63,80,100,125,160,200,250,315,400,500,630,800,1000,1250,1600,2000,2500,3150,4000,5000,6300,8000,10000,12500,16000,20000];

R=zeros(1,31);
R1=zeros(1,31);
R2=zeros(1,31);
ntot=zeros(1,31);

for n=1:31
    if  f(n) < (0.5*f_c)
        a=n;
    end
    if f_c <= f(n)
        b=n;
    break
    end
end
for n = 1:31
    ntot(n)=perdida+(m/(485*sqrt(f(n))));
    if f(n)<0.5*f_c
        R(n)=10*log10(1+((pi*m*f(n))/(r0*c_0))^2)-5.5 ;
    end
    if f(n)>= f_c
        R1(n)=10*log10(1+((pi*m*f(n))/(r0*c_0))^2)+10*log10((2*ntot(n)*f(n))/(pi*f_c));
        R2(n)=10*log10(1+((pi*m*f(n))/(r0*c_0))^2)-5.5;
        R(n)=min(R1(n),R2(n));
    end
end

m=(R(b)- R(a))/(f(b)-f(a));
ord=R(a)- m*f(a);

for n=1:31
    if (0.5*f_c <= f(n)) && (f(n)<f_c)
       R(n)=m*f(n)+ord;
    end
end

