function oevt= prop_hyper(oev0, dt, mu)
% orbit element after two body propagation for dt days
% for Hyperbola orbit
a0=abs(oev0(1));

e0=oev0(2);
f0=oev0(6);

thH0 = sqrt((e0-1)/(e0+1))*tan(f0/2);
H0 = 2*atanh(thH0);

M0 = e0*sinh(H0)-H0;

n = sqrt(mu/a0^3);
M = M0 + n*(dt*86400);

Ht = Kepler_H(e0, M);

tft = sqrt((1+e0)/(e0-1))*tanh(Ht/2);
ft = 2*atan(tft);
ft = mod(ft, 2*pi);

oevt = oev0;
oevt(6) = ft;
end