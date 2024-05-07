function rv = prop_rv_matrix(rv0, dt, mu)
% 输入多个待递推初始速度
% 每行是一个位置速度，多行(为了适应HZX程序)
% 输出递推后的状态
% -------------------------------------------------------
[m, ~] = size(rv0);
rv = rv0; 

for i = 1 : m
   % 把行转成列
   rv0_i = rv0(i,:)';
   % 递推
   rv_i = prop_rv(rv0_i, dt, mu);
   % 推完再转成行
   rv(i,:) = rv_i';
end

end
