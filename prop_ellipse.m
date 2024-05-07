function coet= prop_ellipse(coe0, dt, mu)
% orbit element after two body propagation for t days
% for Ellipse orbit
a0 = coe0(1);
e0 = coe0(2);
f0 = coe0(6);

E0 = mod(2*atan(sqrt((1-e0)/(1+e0))*tan(f0/2)),2*pi);

M0 = E0 - e0*sin(E0);

n = sqrt(mu/a0^3);

M = M0 + n*(dt*86400);

% 为了适应 Kepler_E，需要把M范围改为0 - 2pi
M = mod(M, 2*pi); 

Et = Kepler_E(e0, M);

ft = mod(2*atan(sqrt((1+e0)/(1-e0))*tan(Et/2)),2*pi);

coet = coe0;
coet(6) = ft;
end