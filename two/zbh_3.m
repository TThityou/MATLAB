% fn = 3*((1/4)^n + 2)
syms n z
fn = 3*((1/4)^n + 2);
FZ=ztrans(fn,n,z);    %��ʱ������fn��Z�任FZ��

fz=iztrans(FZ,z,n);    %��Ƶ������FZ��Z���任fn

FZ
fz