T=0.01;dw=0.1;%ʱ���Ƶ�ʱ仯�Ĳ���
t=-10:T:10;
w=-4*pi:dw:4*pi;%����Ͳ���
x=exp(t);%�����ں���--ָ������
X=x*exp(-1i*t'*w)*T;%����Ҷ�任
X1=abs(X);%���������
phai=angle(X);%������λ��
subplot(3, 1, 1);plot(t,x);axis([-5 5 0 1]);
subplot(3, 1, 2);plot(w,abs(X));axis([-10 10 0 3*10^4]);
subplot(3, 1, 3);plot(w,angle(X));axis([-2 2 -4 4]);