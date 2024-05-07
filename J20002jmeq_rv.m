function rv_new = J20002jmeq_rv(rv0)
% 将J2000下的位置速度直接转换到木星惯性系下
%----------------------------------------------------
r_J2000 = rv0(1:3); 
v_J2000 = rv0(4:6); 

r_ICRF = J20002ICRF(r_J2000); 
v_ICRF = J20002ICRF(v_J2000); 

r = ICRF2jmeq_2036(r_ICRF); 
v = ICRF2jmeq_2036(v_ICRF); 

rv_new = [r; v]; 

end

