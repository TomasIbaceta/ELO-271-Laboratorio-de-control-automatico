clc
clear


out = sim('actividad1simulink');

Ts2=0.51;
Ts3=0.5;
Ts4=0.49;
Ts5=0.1;

Ym1=out.simout1; 
Ym2=out.simout2;
Ym3=out.simout3;
Ym4=out.simout4;
Ym5=out.simout5;

t=out.tout;



Yr2=reconstruccion(Ts2,t,Ym2);


stem(t,Yr2)