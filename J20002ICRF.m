function vecnew = J20002ICRF(vec)
% units in mas
xi = -16.617;
eta = -6.819;
dalpha = -14.6;
% chang units in deg
xi0 = xi /(3600*10^3);
eta0 = eta /(3600*10^3);   
dalpha0 = dalpha /(3600*10^3);

R1 = Rotate(1, -eta0);
R2 = Rotate(2, xi0);
R3 = Rotate(3, dalpha0);

M = (R1 * R2 * R3)';

vecnew = M * vec;
end