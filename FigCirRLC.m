%funcion ode45 que resuelve numericamente el sistema MoRo
[t,x]=ode45(@CirRLC,[0 0.0005],[0 0]);
%Aqui se crea la figura donde se va a graficar el x con respecto a t
%x y t son parametros que retorna la funcion ode45
figure(1);
plot(t,x(:,2));
grid on
title("Circuito RLC");
hold on
grid on
y=heaviside(t)*12;
plot(t,y);
hold on
% xlabel("Tiempo");
% ylabel("Radianes");