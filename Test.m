
% 加载星历文件，读取伽利略木卫星历
format long g
clc
% read leap seconds data file
readleap;

pathpre = pwd; 
newpath = [pathpre '\spice\spice']; 
load_spice_kernels(newpath); 

%% 读取规则卫星的星历

cal = [2036 1 2 3 4 5]; 
jd = cal2jd(cal); 

rvs_reg = Eph_JovianRegular(jd); % 只读取规则卫星的

% 木卫一到四分别为im=1，2，3，4
im = 3; % 木卫三
rv_im_emeJ2000 = rvs_reg(:, im); 

rv = J20002jmeq_rv(rv_im_emeJ2000); 

% STK结果
rv_STK = [-1.01113e+06  -359315  -2258.41  3.64073  -10.2248  -0.011187]'; 

rv - rv_STK

%% 读取全部星历

rvs = Eph_JovianSatellite(jd); 
im2 = 91; 
rvs(:, im2)
