function [Rtot]=calculo_ISO(espesor,young,poisson,densidad,perdida,l1,l2)
c = 343;
ro0=1.18;
m = densidad*espesor;
B = (young/(1-poisson^2))*((espesor^3)/12);
f_c = (((c)^2)/(2*pi))*sqrt(m/B) ;
f_d = (young/(2*pi*densidad))*sqrt(m/B) ;

frecuencias = [20,25,31.5,40,50,63,80,100,125,160,200,250,315,400,500,630,800,1000,1250,1600,2000,2500,3150,4000,5000,6300,8000,10000,12500,16000,20000];

ntot = zeros(1,31);
R = zeros(1,31);
Rtot = zeros(1,31);
t= zeros(1,31);
k0=zeros(1,31);
A=zeros(1,31);
sigma=zeros(1,31);
sigmaf =zeros(1,31);
sigma1=zeros(1,31);
sigma2=zeros(1,31);
sigma3=zeros(1,31);
lam=zeros(1,31);
delta1=zeros(1,31);
delta2=zeros(1,31);

f11= ((c^2)/(4*f_c))*((1/(l1^2))+(1/(l2^2)));

%factor de radiación para ondas forzadas
for n= 1:31
    ntot(n)= perdida+(m/(485*sqrt(frecuencias(n))));
    k0(n)=(2*pi*frecuencias(n))/c;
    A(n) = -0.964-(0.5+(l2/(pi*l1)))*log(l2/l1)+((5*l2)/(2*pi*l1))-(1/(4*pi*l1*l2*(k0(n)^2)));
    sigmaf(n) = 0.5*((log(k0(n)*sqrt(l1*l2)))-A(n));
    
%factor de radiación para ondas libres
    sigma1(n)=1/sqrt(1-(f_c/frecuencias(n)));
    sigma2(n)= 4*l1*l2*((frecuencias(n)/c)^2);
    sigma3(n)= sqrt((2*pi*frecuencias(n)*(l1+l2))/(16*c));
    
    lam(n)= sqrt(frecuencias(n)/f_c);
    
    delta1(n)=((1-(lam(n)^2))*log((1+lam(n))/(1-lam(n)))+(2*lam(n)))/(4*(pi^2)*((1-(lam(n)^2))^(1.5)));
    delta2(n)= ((8*(c^2))*((1-(2*(lam(n)^2)))))/((f_c^2)*(pi^4)*l1*l2*lam(n)*sqrt(1-(lam(n)^2)));

    if f11 <= (f_c/2)
        if frecuencias(n)>= f_c
        sigma(n)=sigma1(n);
        end
        if  frecuencias(n) < (f_c)
        sigma(n)= ((2*(l1+l2))/(l1*l2))*(c/f_c)*delta1(n)+delta2(n);
        end
        if  frecuencias(n) > (f_c/2) && frecuencias(n) < (f_c)
        sigma(n)=((2*(l1+l2))/(l1*l2))*(c/f_c)*delta1(n);
        end
    end
 
    %if f11>frecuencias(n) && f11 < (f_c/2) &&  sigma(n) > sigma2(n)
    %sigma(n)=sigma2(n);
    %end
    
   if f11 > (f_c/2)
      if frecuencias(n)<f_c && sigma2(n)<sigma3(n)
        sigma(n)=sigma2(n);
      end
      if frecuencias(n)>f_c && sigma1(n)<sigma3(n)
        sigma(n)=sigma1(n);
      else 
        sigma(n)=sigma3(n);
      end      
   end
   if frecuencias(n) > f_c
    t(n)=(((2*ro0*c)/(2*pi*frecuencias(n)*m))^2)*((pi*f_c*(sigma(n)^2))/(2*frecuencias(n)*ntot(n)));
   end
   if frecuencias(n) < f_c
    t(n)=(((2*ro0*c)/(2*pi*frecuencias(n)*m))^2)*((2*sigmaf(n))+(((((l1+l2)^2)/((l1^2)+(l2^2)))*sqrt(f_c/frecuencias(n))*((sigma(n)^2)/(ntot(n))))));
   end 
   if frecuencias(n) == f_c
    t(n)=(((2*ro0*c)/(2*pi*frecuencias(n)*m))^2)*((pi*(sigma(n)^2))/(2*ntot(n)));
   end 
    R(n)= -10*log10(t(n));
    Rtot(n)=abs(R(n));
end
end