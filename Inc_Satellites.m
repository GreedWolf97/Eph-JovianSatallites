function Incs = Inc_Satellites
% 给某一日期，算出此时不规则木卫的倾角（deg）
%--------------------------------------------------
cal = [2030 1 1 0 0 0]; 
jdutc = cal2jd(cal); 

rvs = Eph_JovianSatellite(jdutc);
n = length(rvs); 
Incs = zeros(n, 1); 

for i = 1 : n
    rv_i = rvs(:, i); 
    coe_i = rv2coe(rv_i, muJ); 
    % 转成角度
    inc_i = coe_i(3)/pi*180; 
    
    Incs(i) = inc_i; 
end

end
