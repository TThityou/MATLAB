clear;
t=0:pi/24:2*pi; %��������Ͳ���
y1=exp(-0.2*t);    %˥��ָ���ź�--��һ���ź�

subplot(221);   %����ͼ����ʾ��ʽ��λ��
plot(t,y1);     %���ú�����ͼ
grid on;        %������
xlabel('t');
ylabel('y1');
title('˥��ָ���ź�y1=e^(-0.2t)');

y2=sin(4*t);  %�����ź�--�ڶ����ź�
subplot(222);
plot(t,y2);
grid on;
xlabel('t');
ylabel('y2');
title('�����ź�y2=sin(4t)');

y3=y1.*y2;      %�źŵĳ�
subplot(223);
plot(t,y3);
grid on;
xlabel('t');
ylabel('y3');
title('˥��ָ���ź��������ź����');

y4=y1+y2;     %�źŵļ�
subplot(224);
plot(t,y4);
grid on;
xlabel('t');
ylabel('y4');
title('˥��ָ���ź��������ź����');

