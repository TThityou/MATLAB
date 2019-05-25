T=0.01;dw=0.1;%时间和频率变化的步长
t=-10:T:10;
w=-4*pi:dw:4*pi;%区间和步长
x=exp(t);%非周期函数--指数函数
X=x*exp(-1i*t'*w)*T;%傅里叶变换
X1=abs(X);%计算幅度谱
phai=angle(X);%计算相位谱
subplot(3, 1, 1);plot(t,x);axis([-5 5 0 1]);
subplot(3, 1, 2);plot(w,abs(X));axis([-10 10 0 3*10^4]);
subplot(3, 1, 3);plot(w,angle(X));axis([-2 2 -4 4]);