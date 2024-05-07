function vecnew = jmeq2ICRF(JDutc, vec)
% jupiter mean equator to ICRF
% [1]曹建峰,黄勇,段建锋,秦松鹤,张宇,李勰.木星探测器轨道计算中的动力学[J].宇航学报,2020,41(10):1251-1258.

JDtdb = UTC2TDBjd(JDutc);

JD0 = 2451545;
T = (JDtdb - JD0)/36525;

Ja = 99.360714 + 4850.4046*T;
Jb = 175.895369 + 1191.9605*T;
Jc = 300.323162 + 262.5475*T;
Jd = 114.012305 + 6070.2476*T;
Je = 49.511251 + 64.3*T;

alpha = 268.056595 - 0.006499*T + 0.000117*sind(Ja) + ...
    0.000938*sind(Jb) + 0.001432*sind(Jc) + ...
    0.00003*sind(Jd) + 0.00215*sind(Je);
delta = 64.495303 + 0.002413*T + 0.00005*cosd(Ja) + ...
    0.000404*cosd(Jb) + 0.000617*cosd(Jc) - ...
    0.000013*cosd(Jd) + 0.000926*cosd(Je);

Rx = Rotate(1, 90 - delta);
Rz = Rotate(3, 90 + alpha);

M = Rx * Rz;
Mt = M';
vecnew = Mt * vec;
end