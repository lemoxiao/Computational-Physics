clear;clc;
%pendulum parameter
g=9.8;
L=1;
Phi=rand(1)*2*pi;
t=0:0.01:20
Theta_max = 4;                  %theta must less than 5 degree
if Theta_max>5
    fprintf("theta overflow");
    return
end
A= 2*pi/360*Theta_max;
%theta equation

for i=1:length(t)
    axis([1.7 2.3 0.5  2]);
    theta = A*cos(sqrt(g/L)*t(i)+Phi);
    %Node coordinates
    x1 = 2;
    y1 = 2;
    %Spherical coordinates
    x2 = x1+sin(theta)*L;
    y2 = y1-cos(theta)*L;
    Node_circle= viscircles([x1 y1],0.001)
    wire = line([x1 x2],[y1 y2],'LineWidth',1,'Color','red');
    Spherical_circle = viscircles([x2 y2],0.02,'Color','black');
    pause(0.001);
    if i<length(t)
        delete(Node_circle);
        delete(wire);
        delete(Spherical_circle);
    end
end