function CodeEph_Irr2023 = CodeEph_Irregular2023
% 生成用于读取星历时的编号
%---------------------------------------------------
N = 12; 
Irregular2023NameNum = linspace(55509, 55520, N);
CodeEph_Irr2023 = cell(N, 1); 
for i = 1 : length(Irregular2023NameNum)
    CodeEph_Irr2023{i} = num2str(Irregular2023NameNum(i)); 
end
end
