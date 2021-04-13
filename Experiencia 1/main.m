%%experiencia 1 - actividad 1
%y_s = y sampleado cada 0.5s
%---------------------
clc
clear
%datos para la entrada de simulink
rand_seed = round(rand()*100)
a1 = 1;
a2 = 2;
out = sim('exp1') %run the simulation

%datos de salida de simulink
y_k = out.y_k;
u1_k = out.step;
u2_k = out.sin;
%--
k = [0 : 1 : length(y_k)-1]; %base de tiempo discreta en pasos
t = linspace(0,10,length(y_k)); %base de tiempo discreta en [s]
%stem(t,y_k);

%Metodo de mínimos cuadrados
%syms a_ls b_ls
phi = [u1_k u2_k];
Theta = vpa(pinv(phi) * y_k) %para usar mas decimales %metodo usando pinv
Theta2 = vpa(inv(transpose(phi)*phi) * transpose(phi) * y_k) %metodo manual
%[a_ls; b_ls] = Theta  %preguntar al profe como asignar un vector columna
%----------------