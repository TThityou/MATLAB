clear;
t=-5:0.01:5;
y=(t>=0);
subplot(221)
plot(t,y);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(t)');
title('��Ծ�ź�h(t)');

%�߶ȱ任
y1=(4*t>=0);
subplot(222)
plot(t,y1);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(4t)');

%ʱ��
y2=((t-2)>=0);
subplot(223)
plot(t,y2);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(t-2)');

%��ת
y3=(-t>=0);
subplot(224)
plot(t,y3);
grid on
axis([-5 5 -2 3]);
xlabel('t');
ylabel('h(-t)');
