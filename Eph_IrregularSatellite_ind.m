function rv_sat = Eph_IrregularSatellite_ind(jdutc, ntarg)
% 除去8个规则卫星，所有不规则卫星的星历
% 读取单个木卫星历
%---------------------------------------------------
jdtdb = utc2tdb (jdutc); 

if ntarg <= 71
    rv_sat = Eph_JovianIrregular_ind (jdtdb, ntarg, 599);
else
    ntarg = ntarg - 71; 
    rv_sat = Eph_JovianIrregular2023_ind (jdtdb, ntarg, 599);
end

end

