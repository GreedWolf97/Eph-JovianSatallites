function vecnew = ICRF2jmeq_2036(vec)
% M = [0.999425460632345       -0.0338931945945572                         0
%         0.0305904293447739          0.90203518153321         0.430577236867965
%        -0.0145936380771527        -0.430329853294568         0.902553734184923];
M = [0.999424684068988       -0.0339160857647754                         0
         0.030611351559243         0.902042192404032         0.430561062195183
       -0.0146029459123846        -0.430313353556829         0.902561450385156];
vecnew = M * vec;
end

