%双边指数信号的傅里叶变换
clear;
syms t w f
f=5*exp(-3*abs(t));
F=fourier(f);%傅里叶变换

subplot(2,1,1);grid on;
ezplot(f,[-2:2]);

subplot(2,1,2);grid on;
ezplot(abs(F),[-10:10]);

