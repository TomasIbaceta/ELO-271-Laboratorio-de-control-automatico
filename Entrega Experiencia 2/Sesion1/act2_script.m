
a1=0.15;
a2=0.2;
b1=0.3;
b2=0.5;
h10=20;
h20=10;

out = sim('actividad2');

v1=out.v1;
v2=out.v2;
h1=(v1.data-b1)/a1;
h2=(v2.data-b2)/a2;
Y=sqrt(h1-h2);
% Metodo de minimos cuadrados usando pinv
phi = [v1.time(1:150) ones(length(v1.time(1:150)),1)];
theta = vpa(pinv(phi)*Y(1:150));% para usar mas decimales
kappa_estimado=theta(1)*(-100)
raiz_en_cero=theta(2)
