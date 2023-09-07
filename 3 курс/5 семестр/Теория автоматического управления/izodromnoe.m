s=[0:0.001:0.06];
t=[0:0.001:1];

Ws=tf([k*T k], [1 0]);
subplot(4,1,1);
step(s,Ws);

ht=k*(T+t);
subplot(4,1,2);
plot(t,ht);
xlabel('t,c');
ylabel('h(t)');

wt=k.*t./t;
subplot(4,1,3);
plot(t,wt);
xlabel('t,c');
ylabel('w(t)');

Wjw=k+k./(T.*s);
subplot(4,2,1);
plot(s,Wjw);
xlabel('jω');
ylabel('W(jω)');


subplot(4,2,2);
nyquist(Ws);


fiw=atan(T.*s)-pi/2;
subplot(4,2,3);
plot(s,fiw);
xlabel('s,rad/c');
ylabel('φ(ω)');


subplot(4,2,4);
bode(Ws);


