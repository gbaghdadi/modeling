%%% Van der Pol oscillator
%%%    x'=(landa-y^2)*x-p^2*y
%%%    y'=x
%%% ref: Balanov, Alexander, et al. Synchronization: From Simple to Complex. Springer, 2009.

clear all;close all

landa=5.5;  % bifurcation parameter
p =8;   % determines the frequency of oscilations

y=0.5;  % initial condtion
x=0.5;  % initial condtion
out(1)=y;  % initial condtion


dt = 0.01;   
t = -0.01;
T_start=2;
T_end=5000;

for i= T_start:T_end
   t = t + dt;
   time(i)=t;
   x=dt*((landa-y.^2)*x-p.^2*y)+ x;
   y = dt*x + y;

   out(i)=y;   % keeping the output in differernt time steps
end
   
figure;
hold on

plot (time, out)  % time domain
xlabel('time');ylabel ('y')
figure
plot(out(1:end-1),diff(out))  % phase space
xlabel('y');ylabel ('x')
