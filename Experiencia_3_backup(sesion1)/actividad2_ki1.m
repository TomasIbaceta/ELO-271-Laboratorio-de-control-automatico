clc 
clear

s=tf('s');

k1=1/8;
tau=20;
tau_p=10;

%KP=tau_p*KI %esto para pantener el polo tau_p

KI=1; %para que los polos sean iguales y reales tienes que ser este valor


G_1=(k1*(tau*s+1))/(s*(tau_p*s+1));
C_0=KI*((tau_p*s+1)/s);

sisotool(G_1,C_0)

