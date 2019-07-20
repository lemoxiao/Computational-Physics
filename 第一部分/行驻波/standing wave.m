%Display parameter
t=0:0.03:10000;
x=0:0.1:50;
z=rand(1)*pi;
%Wave Parameter_voltage
Omega =3/4*pi;
Phi = rand(1)*2*pi;
beta=1;
a=pi;
%Omega is circular frequency;
%Phi is time factor

for i=1:length(t) 
Ex=0;
Ey=sin(pi/a*x)*cos(Omega*t(i)-beta*z-pi/2);
Ez=0;
Hx=sin(pi/a*x)*cos(Omega*t(i)-beta*z+pi/2);
Hy=0;
Hz=cos(pi/a*x)*cos(Omega*t(i)-beta*z);
plot(Ey);hold on
plot(Hx);hold on
plot(Hz);hold on
xlim([0 300])
ylim([-2 2])
hold on
pause(0.001);
hold off
end