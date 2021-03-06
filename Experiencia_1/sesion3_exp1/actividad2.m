clc
clear


R=10000; %ohm
C=18e-6; %F

out = sim('actividad2simulink');

Ts=[0.75 0.5 0.2 0.1 0.05 0.01];  % Sample Time
t=out.tout;
Vinm={out.Vim1;                % Voltaje de entrada muestreado para T_s 
      out.Vim2;
      out.Vim3;
      out.Vim4;
      out.Vim5;
      out.Vim6}; 
Vof={out.Vo1;                % Voltaje de salida 
      out.Vo2;
      out.Vo3;
      out.Vo4;
      out.Vo5;
      out.Vo6}; 


%las reales
Vo=out.Vo;
Vi=out.Vi;



for i=[1:6]
    subplot(6,2,2*i-1)
    titulo2='Voltaje de entrada v/s Voltaje muestreado a:' + string(Ts(i)) + '[s]';
    hold on
    title(titulo2)
    plot(Vi.time,Vi.data)
    stem(Vinm{i}.time,Vinm{i}.data)
    hold off
    
    subplot(6,2,2*i)
    hold on
    titulo='Voltaje salida v/s Voltaje salida luego de ser muestreado a:' + string(Ts(i)) + '[s]' ;
    plot(Vo.time,Vo.data)
    stairs(Vof{i}.time,Vof{i}.data)
    title(titulo)
    hold off

end

% subplot(6,2,1)
% hold on
% plot(t,Vo)
% stairs(t,Vo1)
% hold off
% subplot(6,2,2)
% hold on
% plot(t,Vi)
% stem(t1,Vim1)
% hold off
% subplot(6,2,3)
% hold on
% plot(t,Vo)
% stairs(t,Vo2)
% hold off
% subplot(6,2,4)
% hold on
% plot(t,Vi)
% stem(t2,Vim2)
% hold off
% subplot(6,2,5)
% hold on
% plot(t,Vo)
% stairs(t,Vo3)
% hold off
% subplot(6,2,6)
% hold on
% plot(t,Vi)
% stem(t3,Vim3)
% hold off
% subplot(6,2,7)
% hold on
% plot(t,Vo)
% stairs(t,Vo4)
% hold off
% subplot(6,2,8)
% hold on
% plot(t,Vi)
% stem(t4,Vim4)
% hold off
% subplot(6,2,9)
% hold on
% plot(t,Vo)
% stairs(t,Vo5)
% hold off
% subplot(6,2,10)
% hold on
% plot(t,Vi)
% stem(t5,Vim5)
% hold off
% subplot(6,2,11)
% hold on
% plot(t,Vo)
% stairs(t,Vo6)
% hold off
% subplot(6,2,12)
% hold on
% plot(t,Vi)
% stem(t6,Vim6)
% hold off