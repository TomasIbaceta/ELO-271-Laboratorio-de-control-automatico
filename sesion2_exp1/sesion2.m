%%
clc
clear

%Caso I
a=1; b=1;
% %Caso II
% a=10; b=10;
% %Caso III
% a=100; b=100;

out = sim('sesion2_act1'); %run the simulation

%take the variables from the workspace
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

a1 = [2*0.7*1, 2*0.3*1, 2*0.7*10, 2*0.3*10, 2*0.7*1];
a0 = [1, 1, 100, 100,1];
b1 = [0, 0, 0, 0, 0];
b0 = [1, 1, 1, 1, 1];

G_c = @(x) (b1(x)*s+b0(x))/(s^2+a1(x)*s+a0(x));

for i = [1 : length(a1) ]
    G_c(i);
    subplot(3,2,i);
    plot(step(G_c(i)))
   
    disp(i)
    P=pole(G_c(i));
    Z=zero(G_c(i));
    disp("Polos en: ")
    disp(P)
    disp("Ceros en: ")
    disp(Z)
    disp("------------------------")
end


%------------------
%act 2.2

subplot(2,1,1)
hold on
plot( impulse(G_c(1)))
plot( impulse(G_c(2)))
legend('G_c (1)', 'G_c(2)')
subplot(2,1,2)
hold on
plot( impulse(G_c(3)) )
plot( impulse(G_c(4)) )
legend('G_c (3)', 'G_c(4)')
