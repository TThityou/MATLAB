clear;
t=-5:0.01:5;
y=(t>=0);
subplot(221)
plot(t,y);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(t)');
title('阶跃信号h(t)');

%尺度变换
y1=(4*t>=0);
subplot(222)
plot(t,y1);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(4t)');

%时移
y2=((t-2)>=0);
subplot(223)
plot(t,y2);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(t-2)');

%翻转
y3=(-t>=0);
subplot(224)
plot(t,y3);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(-t)');
