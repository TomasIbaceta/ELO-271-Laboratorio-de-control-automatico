%%experiencia 1 - actividad 1
%y_s = y sampleado cada 0.5s
%---------------------
clc
clear
%datos para la entrada de simulink
a1 = 1;
a2 = 2;
out = sim('act1'); %run the simulation

%datos de salida de simulink
y_k = out.y_k;
u1_k = out.step;
u2_k = out.sin;

%graficar las funciones
k = [0 : 1 : length(y_k)-1]; %base de tiempo discreta en pasos
t = linspace(0,10,length(y_k)); %base de tiempo discreta en [s]
stem(t,y_k);

%Metodo de mínimos cuadrados
phi = [u1_k u2_k];
%Theta = vpa(pinv(phi) * y_k) %para usar mas decimales %metodo usando pinv
Theta = pinv(phi) * y_k
Theta2 = vpa(inv(transpose(phi)*phi) * transpose(phi) * y_k) %metodo manual
a_ls = Theta(1,1)
b_ls = Theta(2,1)
%----------------

%% Actividad 2: Datos de una función cuadrática
clc
clear
%datos para la entrada de simulink
a0 = 3; %constant
a1 = 2; %step
a2 = 1; %sin

out = sim('act2'); %run the simulation

%datos de salida de simulink
y_k = out.y_k;
u1_k = out.step;
u2_k = out.sin;
%--

%Metodo de mínimos cuadrados
phi = [ones(length(y_k),1) u1_k u2_k.^2];

% 1 u1[1] u2[1]^2  example of phi
% 1 u1[2] u2[2]^2
% 1 u1[3] u2[3]^2
% 1 u1[4] u2[4]^2

Theta = vpa(pinv(phi) * y_k); %para usar mas decimales %metodo usando pinv

a0_ls = Theta(1,1);
a1_ls = Theta(2,1);
a2_ls = Theta(3,1);




