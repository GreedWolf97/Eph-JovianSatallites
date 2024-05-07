function R=Rotate(xyz, e)
% e in deg
if xyz==1
    R=[1,     0,       0  ;
       0, cosd(e), sind(e);
       0,-sind(e), cosd(e)];
end
if xyz==2
    R=[cosd(e), 0, -sind(e);
          0,    1,      0  ;
       sind(e), 0, cosd(e)];
end
if xyz==3
    R=[cosd(e), sind(e), 0;
       -sind(e),cosd(e), 0;
          0,    0,       1];
end
end