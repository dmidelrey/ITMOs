s=[0:0.001:1];
t=[0:0.001:1];

Ws=tf([k 0],[T 1]);
subplot(6,1,1);
step(Ws);
xlabel('s,rad/c');
ylabel('W(ω)');

ht=k/T*exp(-t./T);
subplot(6,1,2);
plot(t,ht);
xlabel('t,c');
ylabel('h(t)');

wt=k/T-k/T^2*exp(-t./T);
subplot(6,1,3);
plot(t,wt);
xlabel('t,c');
ylabel('w(t)');



subplot(6,1,4);
nyquist(Ws);

fiw=pi/2-atan(T.*s);
subplot(6,1,5);
plot(s,fiw);
xlabel('s,rad/c');
ylabel('φ(ω)');

subplot(6,1,6);
bode(Ws);

