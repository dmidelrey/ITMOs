subplot(2,1,1);
semilogx(s,Lw);grid;
xlabel('w,rad/c');
ylabel('L,dB');
subplot(2,1,2);
semilogx(s,Fw);grid;
xlabel('w,rad/c');
ylabel('F,grad');