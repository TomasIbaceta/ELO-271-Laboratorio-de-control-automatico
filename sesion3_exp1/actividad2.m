clc
clear


R=10000; %ohm
C=18e-6; %F

out = sim('actividad2simulink');
Ts1=0.75;
Ts2=0.5;
Ts3=0.2;
Ts4=0.1;
Ts5=0.05;
Ts6=0.01;

t=out.tout;
t1=[0:Ts1:10];
t2=[0:Ts2:10];
t3=[0:Ts3:10];
t4=[0:Ts4:10];
t5=[0:Ts5:10];
t6=[0:Ts6:10];
%las reales
Vo=out.Vo;
Vi=out.Vi;
%las muestreadas
Vo1=out.Vo1;
Vim1=out.Vim1;
%
Vo2=out.Vo2;
Vim2=out.Vim2;
%
Vo3=out.Vo3;
Vim3=out.Vim3;
%
Vo4=out.Vo4;
Vim4=out.Vim4;
%
Vo5=out.Vo5;
Vim5=out.Vim5;
%
Vo6=out.Vo6;
Vim6=out.Vim6;

subplot(6,2,1)
hold on
plot(t,Vo)
stairs(t,Vo1)
hold off
subplot(6,2,2)
hold on
plot(t,Vi)
stem(t1,Vim1)
hold off
subplot(6,2,3)
hold on
plot(t,Vo)
stairs(t,Vo2)
hold off
subplot(6,2,4)
hold on
plot(t,Vi)
stem(t2,Vim2)
hold off
subplot(6,2,5)
hold on
plot(t,Vo)
stairs(t,Vo3)
hold off
subplot(6,2,6)
hold on
plot(t,Vi)
stem(t3,Vim3)
hold off
subplot(6,2,7)
hold on
plot(t,Vo)
stairs(t,Vo4)
hold off
subplot(6,2,8)
hold on
plot(t,Vi)
stem(t4,Vim4)
hold off
subplot(6,2,9)
hold on
plot(t,Vo)
stairs(t,Vo5)
hold off
subplot(6,2,10)
hold on
plot(t,Vi)
stem(t5,Vim5)
hold off
subplot(6,2,11)
hold on
plot(t,Vo)
stairs(t,Vo6)
hold off
subplot(6,2,12)
hold on
plot(t,Vi)
stem(t6,Vim6)
hold off