clc
clear
s=tf('s');
a1=100;
a2=25;
b=57500;
G=b/((s+a1)*(s-a2)*(s+a2));
Kp=2.1595;
Ki=8.175;
Kd=0.0733;
tau=[0.1,0.01,0.000001];
for i = [1,2,3]
fprintf('%d\n',tau(i))    
C=Kp+Ki*(1/s)+Kd*(s)/(tau(i)*s+1);
pole(minreal(ss(C*G/(1+C*G))))
end
fprintf('polos simplificados\n')
Cs=Kp+Ki*(1/s)+Kd*s;
pole(minreal(ss(Cs*G/(1+Cs*G))))