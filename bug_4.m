%�����źż�����ֵ����
clear;
T=2;dt=0.001;t=-2:0.001:T;

x1=cos(t)-cos(t-1-dt);%�����ź�
x=0;j=0;
for m=-1:1;
    x=x+cos(t-m*T)-cos(t-1-m*T-dt);
end

w0=2*pi/T;
N=10;%г������
L=2*N+1;%��ʾ21��ϵ��
for k=-N:N;
    db(N+1+k)=(1/T)*x1*exp(-j*k*w0*t')*dt;
end
phi=angle(dbug);%db��λ
