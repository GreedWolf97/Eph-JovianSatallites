function rvs = Eph_IrregularSatellite(jdutc)
% 输入jdutc时间，输出所有不规则木卫的位置速度
% J2000
%---------------------------------------------------

% rvs1 = Eph_JovianRegular(jdutc); 

rvs2 = Eph_JovianIrregular(jdutc);

rvs3 = Eph_JovianIrregular2023(jdutc);

% rvs = [rvs1, rvs2, rvs3]; 
rvs = [rvs2, rvs3]; 

end