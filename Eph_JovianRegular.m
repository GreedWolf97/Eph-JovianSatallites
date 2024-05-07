function rvs = Eph_JovianRegular(jdutc)
% Regular 木卫的数量，含Galileo Moons
%---------------------------------------------------
jdtdb = utc2tdb (jdutc); 

N = 8; 

rvs = zeros(6, N); 

for ntarg = 1 : N
    rrd = Eph_JovianRegular_ind (jdtdb, ntarg, 599);
    rvs(:, ntarg) = rrd;
end

end
