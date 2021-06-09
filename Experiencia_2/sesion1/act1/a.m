%Metodo de mínimos cuadrados
phi = [u1_k u2_k];
%Theta = vpa(pinv(phi) * y_k) %para usar mas decimales %metodo usando pinv
Theta = pinv(phi) * y_k
Theta2 = vpa(inv(transpose(phi)*phi) * transpose(phi) * y_k); %metodo manual
a_ls = Theta(1,1);
b_ls = Theta(2,1);
