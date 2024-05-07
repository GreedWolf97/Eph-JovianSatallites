function rvs = Eph_JovianIrregular2023(jdutc)
% 木星2022年新发现的12颗不规则木卫
%---------------------------------------------------
jdtdb = utc2tdb (jdutc); 

N = 12; 

rvs = zeros(6, N); 

for ntarg = 1 : N
    rrd = Eph_JovianIrregular2023_ind (jdtdb, ntarg, 599);
    rvs(:, ntarg) = rrd;
end

end
