% H(z) = (z-0.5)/z
%{
% freqz语句直接画图，注意区别
A=[1 0];
B=[1 -0.5];
freqz(B,A,400)
%}

B=[1 -0.5];
A =[1 0];
[H,w]=freqz(B,A,'whole');
% 向量B--分子、A--分母系数。
% 频率响应在N点评估围绕单位圆的上半部分等距离。如果未指定N，则默认为512。
% freqz(B, A, N, 'whole');
Hm=abs(H);
Hp=angle(H);

subplot(211),plot(w,Hm),grid on;
xlabel('\omega(rad/s)'),ylabel('Magnitude');
title('离散系统<幅频>特性曲线')

subplot(212),plot(w,Hp),grid on;
xlabel('\omega(rad/s)'),ylabel('Phase');
title('离散系统<相频>特性曲线')

% freqz语句直接画图
figure(2)
A=[1 0];
B=[1 -0.5];
freqz(B,A,'whole')
