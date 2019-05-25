clear;
t=0:pi/24:2*pi; %设置区间和步长
y1=exp(-0.2*t);    %衰减指数信号--第一个信号

subplot(221);   %设置图像显示方式和位置
plot(t,y1);     %调用函数画图
grid on;        %画格子
xlabel('t');
ylabel('y1');
title('衰减指数信号y1=e^(-0.2t)');

y2=sin(4*t);  %正弦信号--第二个信号
subplot(222);
plot(t,y2);
grid on;
xlabel('t');
ylabel('y2');
title('正弦信号y2=sin(4t)');

y3=y1.*y2;      %信号的乘
subplot(223);
plot(t,y3);
grid on;
xlabel('t');
ylabel('y3');
title('衰减指数信号与正弦信号相乘');

y4=y1+y2;     %信号的加
subplot(224);
plot(t,y4);
grid on;
xlabel('t');
ylabel('y4');
title('衰减指数信号与正弦信号相加');

