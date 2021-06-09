




out = sim('actividad2');
a1=0.15;
a2=0.2;
b1=0.3;
b2=0.5;

v1=out.v1;
v2=out.v2;

h1=(v1.data-b1)/a1;
h2=(v2.data-b2)/b2;

%Metodo de mínimos cuadrados
phi = [v1.time ones(length(v1.data),1)];
Theta = vpa(pinv(phi) * sqrt(h1-h2)) %para usar mas decimales %metodo usando pinv
