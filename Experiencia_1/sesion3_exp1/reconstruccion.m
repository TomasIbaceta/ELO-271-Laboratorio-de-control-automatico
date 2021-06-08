function yr = reconstruccion(Ts,t,ym)
%función que implementa la reconstrucción de una señal en base a muestras
%usando sinc.  Ts corresponde al tiempo de muestreo (Ts=1/fs), t
%corresponde al vector de tiempo de la señal que consideramos continua,  e Ym es 
%la amplitud de la señal muestreada. la salida yr es la amplitud de la
%señal reconstruida

yr = zeros(size(t));
for i = 1:length(t)
    for n = 0:length(ym)-1
%       yr(i)=yr(i)+ym(n+1)*sin(pi*(t(i)-n*Ts)/Ts)/(pi*(t(i)-n*Ts)/Ts);
        yr(i)=yr(i)+ym(n+1)*sinc((t(i)-n*Ts)/Ts);
    end
end

