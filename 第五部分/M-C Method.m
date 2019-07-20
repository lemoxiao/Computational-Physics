clear;clc
n=100;
x(n)=0;
y(n)=0;
z(n)=0;
count=0;
for i=1:n
    x(i)=rand(1);
    y(i)=rand(1);
    z(i)=rand(1);
    d1(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2+(z(i)-0.5)^2);
    d2(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2)
    if d1(i)<0.5&d2(i)>0.3
        count=count+1;
    end
end

save n_100.mat count


clear;clc
n=500;
x(n)=0;
y(n)=0;
z(n)=0;
count=0;
for i=1:n
    x(i)=rand(1);
    y(i)=rand(1);
    z(i)=rand(1);
    d1(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2+(z(i)-0.5)^2);
    d2(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2)
    if d1(i)<0.5&d2(i)>0.3
        count=count+1;
    end
end

save n_500.mat count
clear;clc
n=5000;
x(n)=0;
y(n)=0;
z(n)=0;
count=0;
for i=1:n
    x(i)=rand(1);
    y(i)=rand(1);
    z(i)=rand(1);
    d1(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2+(z(i)-0.5)^2);
    d2(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2)
    if d1(i)<0.5&d2(i)>0.3
        count=count+1;
    end
end

save n_5000.mat count

clear;clc
n=20000;
x(n)=0;
y(n)=0;
z(n)=0;
count=0;
for i=1:n
    x(i)=rand(1);
    y(i)=rand(1);
    z(i)=rand(1);
    d1(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2+(z(i)-0.5)^2);
    d2(i)=sqrt((x(i)-0.5)^2+(y(i)-0.5)^2)
    if d1(i)<0.5&d2(i)>0.3
        count=count+1;
    end
end

save n_20000.mat count