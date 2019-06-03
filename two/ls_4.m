% ft = cos(k*pi/8
% ls = cos(2*k)
k=0:40;
subplot(2,1,1)
stem(k,sin(k/3),'filled') % 'filled'--ÊµÐÄ
title('sin(k/3)')
subplot(2,1,2)
stem(k,sin(2*k),'filled')
title('sin(2*k)') 
