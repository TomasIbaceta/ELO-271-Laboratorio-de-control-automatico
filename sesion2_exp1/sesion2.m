%%
clc
clear

%Caso I
a=1;
b=1;

% %Caso II
% a=10;
% b=10;

% %Caso III
% a=100;
% b=100;

out = sim('sesion2_act1');

tf=out.tf;
dif=out.dif;

t_len=10; %tiempo de simulación

t = linspace(0, t_len, length(tf));

N=(t_len/0.001)+1;

h=heaviside(t-1);

%plot(t,h)

expr=(b/a)*(h.*(1-exp(-1*a*(t-1))));

% plot(t,expr)
% hold on
% plot(t,dif)
% plot(t,tf)

E=immse(expr, tf.')


% para a=b=1   -> E = 6.2530e-09 
%      a=b=10  -> E = 6.2861e-08 
%      a=b=100 -> E = 6.6396e-07


%% 
clc
clear

s=tf('s');

% %Caso I
% a1=2*0.7*1;
% a0=1;
% b1=0;
% b0=1;

% %Caso II
% a1=2*0.3*1;
% a0=1;
% b1=0;
% b0=1;
% 
% %Caso III
% a1=2*0.7*10;
% a0=100;
% b1=0;
% b0=1;
% 
% %Caso IV
% a1=2*0.3*10;
% a0=100;
% b1=0;
% b0=1;
% 
%Caso IV
a1=2*0.7*1;
a0=1;
b1=-1;
b0=1;



G_c=(b1*s+b0)/(s^2+a1*s+a0); 

P=pole(G_c);
Z=zero(G_c);


