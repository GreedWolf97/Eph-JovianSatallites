function [r, v] = coe2rv(coe, mu)
% it works both e<1 and e>1

% Converts classical orbital elements to ECI state vector Liu Jingyi
%
% Input:
%  oev(1) = semimajor axis          (km)
%  oev(2) = orbital eccentricity    (-)     
%  oev(3) = orbital inclination     (rad)   (0 <= inclination <= pi)
%  oev(4) = RAAN                    (rad)   (0 <= RAAN <= 2 pi)
%  oev(5) = argument of perigee     (rad)   (0 <= argument of perigee <= 2 pi)
%  oev(6) = true anomaly            (rad)   (0 <= true anomaly <= 2 pi)
%
% Output
%       r = ECI position vector          (km)
%       v = ECI velocity vector          (km/sec)

% Decodes orbital elements vector
a    = coe(1);
e    = coe(2);
i   = coe(3);
raan = coe(4);
w   = coe(5);
f = coe(6);

P=[cos(raan)*cos(w)-sin(raan)*sin(w)*cos(i);
    sin(raan)*cos(w)+cos(raan)*sin(w)*cos(i);
    sin(w)*sin(i)];
Q=[-cos(raan)*sin(w)-sin(raan)*cos(w)*cos(i);
    -sin(raan)*sin(w)+cos(raan)*cos(w)*cos(i);
    cos(w)*sin(i)];

if e<1
    p=abs(a)*(1-e*e);
    rm= p/(1+e*cos(f));
    r=rm*cos(f)*P+rm*sin(f)*Q;
    v=-sqrt(mu/p)*sin(f)*P+sqrt(mu/p)*(cos(f)+e)*Q;
else
    p=abs(a)*(e*e-1);
    rm= p/(1+e*cos(f));
    r=rm*cos(f)*P+rm*sin(f)*Q;
    v=-sqrt(mu/p)*sin(f)*P+sqrt(mu/p)*(cos(f)+e)*Q;
end

end