clear;clc
%function [x,k]=Fjacobi(A,b,x0,tol)
%jacobi iteration 
A=[10 -1 0;-1 10 -2; 0 -2 10];
b=[9 7 6]';
x0=[1 1 1]';
tol=1e-4;
% tol is errir tolerance ,x0 is initial value
maxl=300;       %max iterations
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
B=D\(L+U);
f=D\b;
x=B*x0+f;
k=1;

while norm(x-x0)>=tol
    x0=x;
    x=B*x+f;
    k=k+1;
    if(k>=maxl)
        disp('Unconvergence');
        return;
    end
    %[k x']
end

% check A\b