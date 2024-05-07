function rvs = Eph_JovianIrregular(jdutc)
% 木星2023年前的71颗不规则卫星
%---------------------------------------------------
jdtdb = utc2tdb (jdutc); 

N = 71; 

rvs = zeros(6, N); 

for ntarg = 1 : N
    rrd = Eph_JovianIrregular_ind (jdtdb, ntarg, 599);
    rvs(:, ntarg) = rrd;
end

end
