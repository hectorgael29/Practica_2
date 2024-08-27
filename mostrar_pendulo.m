%---------Parametros------
theta_1 = 0;
theta_2 = (35*pi)/180;%grados
thetad_1 = 0;
thetad_2 = 0;
tiempo = 10; %segundos

%-------llamado al ODE45----------------
[t,y] = ode45(@doblependulo,[0 tiempo], [theta_1 theta_2 thetad_1 thetad_2]);

clf
figure(1)
subplot(2,1,1)
sgtitle("Posicion Angular ")
plot(t,y(:,1))
grid on
xlabel("Tiempo");
ylabel("Rad");
legend('THETA_1');

subplot(2,1,2)
plot(t,y(:,2),'r')
grid on
xlabel("tiempo");
ylabel("Rad");
legend('THETA_2');