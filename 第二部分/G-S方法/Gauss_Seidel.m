function x=Gauss_Seidel(A,b)
[m,n]=size(A);
x0=zeros(n,1);
x=zeros(n,1);
k=0;
for i=1:n
    x(i)=b(i);
    for j=1:i-1
        x(i)=x(i)-A(i,j)*x(j);
    end
    for j=i+1:n
        x(i)=x(i)-A(i,j)*x0(j);
    end
    x(i)=x(i)/A(i,i);
end
x
while norm(x-x0)>1e-10
    k=k+1;
    x0=x;
    for i=1:n
        x(i)=b(i);
        for j=1:i-1
            x(i)=x(i)-A(i,j)*x(j);
        end
        for j=i+1:n
            x(i)=x(i)-A(i,j)*x0(j);
        end
        x(i)=x(i)/A(i,i);
    end
    x
end
k
