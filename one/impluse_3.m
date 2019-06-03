% 求y''(t)+1y'(t)+2y(t)=2f'(t)+2f(t)零状态响应,冲激响应，阶跃响应
clear;
t=0:0.01:10;
a=[1 1 2];%左边系数
b=[0 2 2];%右边系数
sys=tf(b,a);
f=sin(pi*t);%给他一个输入信号
y=lsim(sys,f,t);%调用函数显示零状态响应
subplot(221);plot(t,y);axis([0 10 -2 2]);%设置XY显示区间
xlabel('t(s)');ylabel('y(t)');grid on;title('零状态响应')

y2=impulse(b,a,t);
subplot(222);plot(t,y2);
xlabel('t(s)');ylabel('y2(t)');grid on;title('冲激响应');

y3=step(b,a,t);
subplot(223);plot(t,y3);
xlabel('t(s)');ylabel('y3(t)');grid on;title('阶跃响应');
