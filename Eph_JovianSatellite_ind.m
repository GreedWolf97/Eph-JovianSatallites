function rv_sat = Eph_JovianSatellite_ind(jdutc, ntarg)
% 所有卫星的星历
% 读取单个木卫星历
%---------------------------------------------------
jdtdb = utc2tdb (jdutc); 
ncent = 599; 

if ntarg <= 8
    % 序号1-4是伽利略卫星
    rv_sat = Eph_JovianRegular_ind (jdtdb, ntarg, ncent); 
    
elseif ntarg <= 79 && ntarg >= 9
    ntarg = ntarg - 8; 
    rv_sat = Eph_JovianIrregular_ind (jdtdb, ntarg, ncent);
    
else
    ntarg = ntarg - 79; 
    rv_sat = Eph_JovianIrregular2023_ind (jdtdb, ntarg, ncent);
end

end

