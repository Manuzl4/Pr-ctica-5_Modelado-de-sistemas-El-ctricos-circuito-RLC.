function dx=CirRLC(t,x)
%-----Definicion de Parametros-----%
r=120;
l=4e-3;
c=0.1e-6;
v=12;
%----------------------------------%
dx=zeros(2,1);
%------Definicion de Matrices------%
Ma=[-r/l -1/l ; 1/c 0];
Mb=[1/l ; 0];
%-------Dinamica del Sistema-------%
dx(1:2)=Ma*([x(1);x(2)])+Mb*v;
end