function rvt = prop_ellipse_rv(rv0, dt, mu)
coe0 = rv2coe(rv0, mu);
oevt = prop_ellipse(coe0, dt, mu);
[rt, vt] = coe2rv(oevt, mu);
rvt = [rt; vt];
end