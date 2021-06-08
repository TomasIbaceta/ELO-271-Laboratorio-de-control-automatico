clc
clear

Ts=[0.51 0.5 0.49 0.1];
out = sim('actividad1simulink');


Ym1=out.simout1; 
t=out.tout;
Ym={out.simout2;
    out.simout3;
    out.simout4;
    out.simout5};


Yr={};
for i=[1:4]
    Yr=vertcat(Yr,reconstruccion(Ts(i),t,Ym{i}.data))
    subplot(2,2,i)
    titulo='Tiempo de muestreo: ' + string(Ts(i));
    hold on
    title(titulo)
    plot(Ym1.time,Ym1.data)
    stem(Ym{i}.time,Ym{i}.data)
    plot(t,Yr{i})
    hold off
    legend('Y', 'Ym', 'Yr')
end

%%
clc
clear

out = sim('actividad1_2simulink');
Ts=[0.75 0.5 0.2 0.1 0.05 0.01];
Yreal=out.simout;
Ym={out.simout1;
    out.simout2;
    out.simout3;
    out.simout4;
    out.simout5;
    out.simout6}; 
t=out.tout;


figure
for i=[1:6]
    titulo='Tiempo de muestreo: ' + string(Ts(i)) + '[s]';
    subplot(2,3,i)
    hold on
    title(titulo)
    plot(Yreal)
    stairs(Ym{i}.time,Ym{i}.data)
    hold off
end

%%
clc
clear

out = sim('actividad1_22simulink');
Ts=[0.75 0.5 0.2 0.1 0.05 0.01];
Yreal=out.simout;
Ym={out.simout1;
    out.simout2;
    out.simout3;
    out.simout4;
    out.simout5;
    out.simout6}; 
t=out.tout;
figure
for i=[1:6]
    titulo='Tiempo de muestreo: ' + string(Ts(i)) + '[s]';
    subplot(2,3,i)
    hold on
    title(titulo)
    plot(Yreal)
    plot(Ym{i}.time,Ym{i}.data)
    
    hold off
end














