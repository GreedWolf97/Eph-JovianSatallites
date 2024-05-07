function rvt = prop_rv(rv0, dt, mu)
% this function could prop rv no matter e<1 or e>1 and dt<0 or dt>0
% call rv2coe.m, coe2rv.m, prop_ellipse.m, prop_hyper.m

coe0 = rv2coe(rv0, mu);
if coe0(2) < 1
    oevt = prop_ellipse(coe0, dt, mu);
elseif coe0(2) > 1
    oevt = prop_hyper(coe0, dt, mu);
end
[rt, vt] = coe2rv(oevt, mu);
rvt = [rt; vt];
end