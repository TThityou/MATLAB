% 部分分式展开求拉氏逆变换
% F=s+5)/(s^2+5*s+6)
syms s
ft= ilaplace((s+5)/(s^2+5*s+6));
ft
%{
format rat;
num=[0, 1, 5];
den=[1, 5, 6, 0];
[r,p]=residue(num,den);
%}
%{
format rat;
num = [2, 0];
den = [1, 0, 1];
[r, p] = residue(num, den);

syms s
ft= ilaplace(s^2/(s^2+1));
%}
%{
% F=(s+2)/(s^3+4*s^2+3*s)
format rat;
num=[1,2];
den=[1,4,3,0];
[r,p]=residue(num,den);

syms s
ft= ilaplace((s+2)/(s^3+4*s^2+3*s));
%}

