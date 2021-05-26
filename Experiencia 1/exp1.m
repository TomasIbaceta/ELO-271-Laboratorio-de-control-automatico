%%experiencia 1 - actividad 1
%y_s = y sampleado cada 0.5s
%---------------------
%% Actividad 1: Datos de un plano
clc
clear
%datos para la entrada de simulink
a1 = 1;
a2 = 2;
out = sim('act1'); %correr la simulación

%datos de salida de simulink
y_k = out.y_k;
u1_k = out.step;
u2_k = out.sin;

%graficar las funciones
%k = [0 : 1 : length(y_k)-1]; %base de tiempo discreta en pasos
%t = linspace(0,10,length(y_k)); %base de tiempo discreta en [s]

%Metodo de mínimos cuadrados
phi = [u1_k u2_k];
%Theta = vpa(pinv(phi) * y_k) %para usar mas decimales %metodo usando pinv
Theta = pinv(phi) * y_k
Theta2 = vpa(inv(transpose(phi)*phi) * transpose(phi) * y_k); %metodo manual
a_ls = Theta(1,1);
b_ls = Theta(2,1);

comparacion= "\nResultados: sesion 1, actividad 1 \n\n" + ...
             "Coeficiente de entrada a1: " + string(a1) + "\n" +...
             "Aproximación de mínimos cuadrados a1: " + string(a1) + "\n" +...
             "Coeficiente de entrada a2: " + string(a2) + "\n" +...    
             "Aproximación de mínimos cuadrados a2: " + string(a2) + "\n" ;

sprintf(comparacion)
%% Actividad 2: Datos de una función cuadrática
clc
clear
%datos para la entrada de simulink
a0 = 3; %constante
a1 = 2; %step
a2 = 1; %sin

out = sim('act2'); %Correr la simulación

%datos de salida de simulink
y_k = out.y_k;
u1_k = out.step;
u2_k = out.sin;
%--

%Metodo de mínimos cuadrados
phi = [ones(length(y_k),1) u1_k u2_k.^2];

Theta = vpa(pinv(phi) * y_k); %metodo usando pinv, vpa da mas precisión 

a0_ls = Theta(1,1)
a1_ls = Theta(2,1)
a2_ls = Theta(3,1)

%% Actividad 3: 
clc
clear
%datos para la entrada de simulink
a1 = 2;
a2 = 1;
out = sim('act3_euler');
%datos de salida de simulink
y1_euler = out.y_1;
y2_euler = out.y_2;

out2 = sim('act3_runge_kutta');
y1_RK4 = out2.y_1;
y2_RK4 = out2.y_2;

%---------------
%codigos para comparar si son iguales o distintos
y1_check = y1_euler - y1_RK4;
y2_check = y2_euler - y2_RK4;

if any(y1_check ~= 0) %si son distintos
    sprintf("los dos métodos para y1 dan resultados distintos")
else
    sprintf("los dos métodos para y1 dan resultados iguales")
end

if any(y2_check ~= 0)
    sprintf("los dos métodos para y2 dan resultados distintos")
else
    sprintf("los dos métodos para y1 dan resultados iguales")
end
%----------------







