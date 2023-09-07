s=[0:0.001:1];
t=[0:0.001:1];

Ws=k.*(1+T*s)./s;
subplot(7,1,1);
plot(s,Ws);
xlabel('s,rad/c');
ylabel('W(ω)');

ht=k*(T+t);
subplot(7,1,2);
plot(t,ht);
xlabel('t,c');
ylabel('h(t)');

wt=k.*t./t;
subplot(7,1,3);
plot(s,wt);
xlabel('t,c');
ylabel('h(t)');

Wjw=k+k./(T.*s);
subplot(7,1,4);
plot(s,Wjw);
xlabel('s,rad/c');
ylabel('W(jω)');

Aw=k*sqrt(1+1./(T^2.*s.^2));
subplot(7,1,5);
plot(s,Aw);
xlabel('s,rad/c');
ylabel('A(ω)');

fiw=atan(T.*s)-pi/2;
subplot(7,1,6);
plot(s,fiw);
xlabel('s,rad/c');
ylabel('φ(ω)');

Lw=20*log10(k)+20*log10(sqrt(s.^2.*T^2+1))-20*log10(s);
subplot(7,1,7);
plot(s,Lw);
xlabel('s,rad/c');
ylabel('L(ω)');


