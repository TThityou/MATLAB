% ��y''(t)+1y'(t)+2y(t)=2f'(t)+2f(t)��״̬��Ӧ,�弤��Ӧ����Ծ��Ӧ
clear;
t=0:0.01:10;
a=[1 1 2];%���ϵ��
b=[0 2 2];%�ұ�ϵ��
sys=tf(b,a);
f=sin(pi*t);%����һ�������ź�
y=lsim(sys,f,t);%���ú�����ʾ��״̬��Ӧ
subplot(221);plot(t,y);axis([0 10 -2 2]);%����XY��ʾ����
xlabel('t(s)');ylabel('y(t)');grid on;title('��״̬��Ӧ')

y2=impulse(b,a,t);
subplot(222);plot(t,y2);
xlabel('t(s)');ylabel('y2(t)');grid on;title('�弤��Ӧ');

y3=step(b,a,t);
subplot(223);plot(t,y3);
xlabel('t(s)');ylabel('y3(t)');grid on;title('��Ծ��Ӧ');
