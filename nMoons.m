function n_rad_s = nMoons(im)
% assume galileo moons move in circle, here are there angular velocity
% n: deg/day
% Lynam, an assessment of multiple satellite-aided capture at Jupiter
if im == 1
    n = 203.4890;
elseif im == 2
    n = 101.3747;
elseif im == 3
    n = 50.3176;
elseif im == 4
    n = 21.5711;
else
    n = NaN;
end

% I prefer to change it in rad/s
n_rad_s = n/180*pi/86400;

end
