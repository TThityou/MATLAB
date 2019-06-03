% H(z) = (z-0.5)/z
%{
% freqz���ֱ�ӻ�ͼ��ע������
A=[1 0];
B=[1 -0.5];
freqz(B,A,400)
%}

B=[1 -0.5];
A =[1 0];
[H,w]=freqz(B,A,'whole');
% ����B--���ӡ�A--��ĸϵ����
% Ƶ����Ӧ��N������Χ�Ƶ�λԲ���ϰ벿�ֵȾ��롣���δָ��N����Ĭ��Ϊ512��
% freqz(B, A, N, 'whole');
Hm=abs(H);
Hp=angle(H);

subplot(211),plot(w,Hm),grid on;
xlabel('\omega(rad/s)'),ylabel('Magnitude');
title('��ɢϵͳ<��Ƶ>��������')

subplot(212),plot(w,Hp),grid on;
xlabel('\omega(rad/s)'),ylabel('Phase');
title('��ɢϵͳ<��Ƶ>��������')

% freqz���ֱ�ӻ�ͼ
figure(2)
A=[1 0];
B=[1 -0.5];
freqz(B,A,'whole')
