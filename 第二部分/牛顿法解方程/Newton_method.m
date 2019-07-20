clear;clc;
syms x;
%parament input
fun=x*exp(x)-1;
a=1;
e=0.000001;
n=100;
% fun=input('function of x ,fx=');
% a=input('Initial Variable Value a=');
% e=input('the degree of accuracy e=');
% n=input('the number of iteration n = ');
%variable definition
Current_Resolution=double(a);
Resolution_set(1)=a;
df=diff(fun,x);
x0=double(subs(fun,x,a));
dx0=double(subs(df,x,a));
x1=double(Current_Resolution-x0./dx0);
count=1;
fprintf('number of interation=%d  x=%d\n',count,x1);
Resolution_set(2)=x1;
%Newton Method Judge loop
while abs(x1-Current_Resolution)>e&&count<n;
    Current_Resolution=x1;
    x0=subs(fun,x,Current_Resolution);
    x1=double(Current_Resolution-x0/dx0);
    count=count+1;
    Resolution_set(count+1)=x1;
    fprintf('number of interation=%d,x=%d\n',count,x1);
end
%figure
q1=Resolution_set(end)-0.05:0.001:a;
q2=q1.*exp(q1)-1;
plot(q1,q2,'LineWidth',2,'Color',[1 0.5 0]);hold on;
%plot the figure of curve of function
Value_set=Resolution_set.*exp(Resolution_set)-1;
%correct the position of condinate axis
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
%plot the figure about the process in Newton Method
for i=1:(length(Resolution_set)-1)
    line([Resolution_set(i) Resolution_set(i+1)],[Value_set(i) 0],'LineWidth',1,'Color',[0.5 0 0]);
    hold on;
    line([Resolution_set(i+1) Resolution_set(i+1)],[0 Value_set(i+1)],'LineWidth',1,'Color',[0.5 0 0]);
    hold on;
end

