% fn = 3*((1/4)^n + 2)
syms n z
fn = 3*((1/4)^n + 2);
FZ=ztrans(fn,n,z);    %求时域序列fn的Z变换FZ；

fz=iztrans(FZ,z,n);    %求频域序列FZ的Z反变换fn

FZ
fz