clc
clear


out = sim('actividad1simulink');

Ts2=0.51;
Ts3=0.5;
Ts4=0.49;
Ts5=0.1;

t2=1000*[0:Ts2:3];
t3=1000*[0:Ts3:3];
t4=1000*[0:Ts4:3];
t5=1000*[0:Ts5:3];
%sacado de simulink
Ym1=out.simout1; 
Ym2=out.simout2;
Ym3=out.simout3;
Ym4=out.simout4;
Ym5=out.simout5;
t=out.tout;
%
Yr2=reconstruccion(Ts2,t,Ym2);
Yr3=reconstruccion(Ts3,t,Ym3);
Yr4=reconstruccion(Ts4,t,Ym4);
Yr5=reconstruccion(Ts5,t,Ym5);
%
%hacer los plots lol
subplot(2,2,1)
hold on
title('Tiempo de Muestreo 0.51')
plot(Ym1)
stem(t2,Ym2)
plot(Yr2)
hold off
subplot(2,2,2)
hold on
title('Tiempo de Muestreo 0.50')
plot(Ym1)
stem(t3,Ym3)
plot(Yr3)
hold off
subplot(2,2,3)
hold on
title('Tiempo de Muestreo 0.49')
plot(Ym1)
stem(t4,Ym4)
plot(Yr4)
hold off
subplot(2,2,4)
title('Tiempo de Muestreo 0.1')
hold on
plot(Ym1)
stem(t5,Ym5)
plot(Yr5)
hold off

