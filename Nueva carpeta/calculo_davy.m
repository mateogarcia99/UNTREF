function [R]=calculo_davy(densidad,espesor,perdidas,young,poisson,largo,alto)
po = 1.18 ;
c0 = 343 ; 
averages = 3; 
m = densidad*espesor;
B = (young/(1-poisson^2)) * ((espesor^3)/12) ; 
Fc = (c0^2/(2*pi))*(sqrt(m/B));

filtro=[20,25,31.5,40,50,63,80,100,125,160,200,250,315,400,500,630,800,1000,1250,1600,2000,2500,3150,4000,5000,6000,8000,10000,12500,16000,20000];
dB = 0.236 ;
octave = 3;

for i=1:length(filtro)
    f = filtro(i) ;
    Ntot=perdidas + (m/(485*sqrt(f)));
    ratio = f/Fc;
    limit = 2^(1/(2*octave));
    if(ratio < 1 / limit) || (ratio > limit)
    TLost = Single_leaf_Davy(f,densidad,young,poisson,espesor,Ntot,alto,largo);
    else
    Avsingle_leaf = 0;
    for j = 1:averages
    factor = 2 ^ ((2*j-1-averages)/(2*averages*octave));
    aux=10^(-Single_leaf_Davy(f*factor,densidad,young,poisson,espesor,Ntot,alto,largo)/10);
    Avsingle_leaf = Avsingle_leaf + aux;
    end
    TLost = -10*log10(Avsingle_leaf/averages);
    end
    R(i)= TLost ;
end