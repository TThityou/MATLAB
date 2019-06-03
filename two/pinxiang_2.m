% H(jw) = (jw)^2/((jw)^3+(jw)+1)
% b=[0, 1, 0, 0];  a=[1, 0, 2, 1];
w=0:0.025:5;
b=[0, 1, 0, 0];  a=[1, 0, 1, 1];
H=freqs(b,a,w);
subplot(2,1,1);
plot(w,abs(H));grid;
xlabel('\omega(rad/s)');
ylabel('|H(j\omega)|');
title('H(jw)的幅频特性');
subplot(2,1,2);
plot(w,angle (H));grid;
xlabel('\omega(rad/s)');
ylabel('\phi(\omega)');
title('H(jw)的相频特性');


%{
% H(jw) = 1/((jw)^3+2*(jw)^2+2*(jw)+1)
%  b=[0, 0, 0, 1];  a=[1, 2, 2, 1];
w=0:0.025:5;
b=[1];a=[1,2,2,1];
H=freqs(b,a,w);
subplot(2,1,1);
plot(w,abs(H));grid;
xlabel('\omega(rad/s)');
ylabel('|H(j\omega)|');
title('H(jw)的幅频特性');
subplot(2,1,2);
plot(w,angle (H));grid;
xlabel('\omega(rad/s)');
ylabel('\phi(\omega)');
title('H(jw)的相频特性');
%}