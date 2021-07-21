alpha=60;
psi=0.7;
wn=70;

[L_,P_]=paq([1 -25 0],57500,conv([1 100+alpha alpha*100],[1 2*psi*wn wn^2]))

s=tf('s');
G=57500/(s+100)/(s^2-25^2);
C=(s+100)*(s+25)*(P_(1)*s+P_(2))/(s^3+L_(2)*s^2+L_(3)*s)

% el controlador debe de tener la forma : 
 
 % as^3+ bs^2 + cs +d
 % --------------------
 % s^3 + es^2 + fs
 
%el valor a es C(infinito)

a=evalfr(C,inf);
Cae=(C^-1)-(1/a); 

% conociendo el valor de a y y cae, usted puede implementar el esquema de
% antienrrollamiento sin problemas :)