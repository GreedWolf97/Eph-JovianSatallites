function rrd = Eph_JovianIrregular_ind (et, ntarg, ncent)

% reads the jpl planetary ephemeris and gives the position and velocity
% of the point 'ntarg' with respect to point 'ncent' using MICE routines

% input

%   et    = TDB julian date at which interpolation is wanted

%   ntarg = integer number of 'target' point

%   ncent = integer number of center point

% output

%   rrd = output 6-word array containing position and velocity
%         of point 'ntarg' relative to 'ncent'. the units are
%         determined by the value of km passed via global.

% global

%   iephem  = initialization flag (1 = initialize)
%   ephname = name of ephemeris binary data file (de421.bsp, etc.)
%   km      = state vector units flag (1 = km & km/sec, 0 = au & au/day)
%   au      = numerical value of astronomical unit (kilometers)

% Orbital Mechanics with Matlab

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ephname = 'jup344-Irregular.bsp';

km = 1; 

au = 149597871; 

cspice_furnsh(ephname);

CodeEph_Irr = CodeEph_Irregular; 

% set name of target body
switch ntarg
    case (1)
        targ = CodeEph_Irr(1);
    case (2)
        targ = CodeEph_Irr(2);
    case (3)
        targ = CodeEph_Irr(3);
    case (4)
        targ = CodeEph_Irr(4);
    case(5)
        targ = CodeEph_Irr(5);
    case (6)
        targ = CodeEph_Irr(6);
    case (7)
        targ = CodeEph_Irr(7);
    case (8)
        targ = CodeEph_Irr(8);
    case (9)
        targ = CodeEph_Irr(9);
    case (10)
        targ = CodeEph_Irr(10);
        
    case (11)
        targ = CodeEph_Irr(11);
    case (12)
        targ = CodeEph_Irr(12);
    case (13)
        targ = CodeEph_Irr(13);
    case (14)
        targ = CodeEph_Irr(14);
    case (15)
        targ = CodeEph_Irr(15);
    case (16)
        targ = CodeEph_Irr(16);
    case (17)
        targ = CodeEph_Irr(17);
    case (18)
        targ = CodeEph_Irr(18);
    case (19)
        targ = CodeEph_Irr(19);
    case (20)
        targ = CodeEph_Irr(20);
        
    case (21)
        targ = CodeEph_Irr(21);
    case (22)
        targ = CodeEph_Irr(22);
    case (23)
        targ = CodeEph_Irr(23);
    case (24)
        targ = CodeEph_Irr(24);
    case (25)
        targ = CodeEph_Irr(25);
    case (26)
        targ = CodeEph_Irr(26);
    case (27)
        targ = CodeEph_Irr(27);
    case (28)
        targ = CodeEph_Irr(28);
    case (29)
        targ = CodeEph_Irr(29);
    case (30)
        targ = CodeEph_Irr(30);
        
    case (31)
        targ = CodeEph_Irr(31);
    case (32)
        targ = CodeEph_Irr(32);
    case (33)
        targ = CodeEph_Irr(33);
    case (34)
        targ = CodeEph_Irr(34);
    case (35)
        targ = CodeEph_Irr(35);
    case (36)
        targ = CodeEph_Irr(36);
    case (37)
        targ = CodeEph_Irr(37);
    case (38)
        targ = CodeEph_Irr(38);
    case (39)
        targ = CodeEph_Irr(39);
    case (40)
        targ = CodeEph_Irr(40);
        
    case (41)
        targ = CodeEph_Irr(41);
    case (42)
        targ = CodeEph_Irr(42);
    case (43)
        targ = CodeEph_Irr(43);
    case (44)
        targ = CodeEph_Irr(44);
    case (45)
        targ = CodeEph_Irr(45);
    case (46)
        targ = CodeEph_Irr(46);
    case (47)
        targ = CodeEph_Irr(47);
    case (48)
        targ = CodeEph_Irr(48);
    case (49)
        targ = CodeEph_Irr(49);
    case (50)
        targ = CodeEph_Irr(50);
        
    case (51)
        targ = CodeEph_Irr(51);
    case (52)
        targ = CodeEph_Irr(52);
    case (53)
        targ = CodeEph_Irr(53);
    case (54)
        targ = CodeEph_Irr(54);
    case (55)
        targ = CodeEph_Irr(55);
    case (56)
        targ = CodeEph_Irr(56);
    case (57)
        targ = CodeEph_Irr(57);
    case (58)
        targ = CodeEph_Irr(58);
    case (59)
        targ = CodeEph_Irr(59);
    case (60)
        targ = CodeEph_Irr(60);
        
    case (61)
        targ = CodeEph_Irr(61);
    case (62)
        targ = CodeEph_Irr(62);
    case (63)
        targ = CodeEph_Irr(63);
    case (64)
        targ = CodeEph_Irr(64);
    case (65)
        targ = CodeEph_Irr(65);
    case (66)
        targ = CodeEph_Irr(66);
    case (67)
        targ = CodeEph_Irr(67);
    case (68)
        targ = CodeEph_Irr(68);
    case (69)
        targ = CodeEph_Irr(69);
    case (70)
        targ = CodeEph_Irr(70);
        
    case (71)
        targ = CodeEph_Irr(71);
    
end

% set name of central body
switch ncent
    case (1)
        obs = CodeEph_Irr(1);
    case (2)
        obs = CodeEph_Irr(2);
    case (3)
        obs = CodeEph_Irr(3);
    case (4)
        obs = CodeEph_Irr(4);
    case(5)
        obs = CodeEph_Irr(5);
    case (6)
        obs = CodeEph_Irr(6);
    case (7)
        obs = CodeEph_Irr(7);
    case (8)
        obs = CodeEph_Irr(8);
    case (9)
        obs = CodeEph_Irr(9);
    case (10)
        obs = CodeEph_Irr(10);
        
    case (11)
        obs = CodeEph_Irr(11);
    case (12)
        obs = CodeEph_Irr(12);
    case (13)
        obs = CodeEph_Irr(13);
    case (14)
        obs = CodeEph_Irr(14);
    case (15)
        obs = CodeEph_Irr(15);
    case (16)
        obs = CodeEph_Irr(16);
    case (17)
        obs = CodeEph_Irr(17);
    case (18)
        obs = CodeEph_Irr(18);
    case (19)
        obs = CodeEph_Irr(19);
    case (20)
        obs = CodeEph_Irr(20);
        
    case (21)
        obs = CodeEph_Irr(21);
    case (22)
        obs = CodeEph_Irr(22);
    case (23)
        obs = CodeEph_Irr(23);
    case (24)
        obs = CodeEph_Irr(24);
    case (25)
        obs = CodeEph_Irr(25);
    case (26)
        obs = CodeEph_Irr(26);
    case (27)
        obs = CodeEph_Irr(27);
    case (28)
        obs = CodeEph_Irr(28);
    case (29)
        obs = CodeEph_Irr(29);
    case (30)
        obs = CodeEph_Irr(30);
        
    case (31)
        obs = CodeEph_Irr(31);
    case (32)
        obs = CodeEph_Irr(32);
    case (33)
        obs = CodeEph_Irr(33);
    case (34)
        obs = CodeEph_Irr(34);
    case (35)
        obs = CodeEph_Irr(35);
    case (36)
        obs = CodeEph_Irr(36);
    case (37)
        obs = CodeEph_Irr(37);
    case (38)
        obs = CodeEph_Irr(38);
    case (39)
        obs = CodeEph_Irr(39);
    case (40)
        obs = CodeEph_Irr(40);
        
    case (41)
        obs = CodeEph_Irr(41);
    case (42)
        obs = CodeEph_Irr(42);
    case (43)
        obs = CodeEph_Irr(43);
    case (44)
        obs = CodeEph_Irr(44);
    case (45)
        obs = CodeEph_Irr(45);
    case (46)
        obs = CodeEph_Irr(46);
    case (47)
        obs = CodeEph_Irr(47);
    case (48)
        obs = CodeEph_Irr(48);
    case (49)
        obs = CodeEph_Irr(49);
    case (50)
        obs = CodeEph_Irr(50);
        
    case (51)
        obs = CodeEph_Irr(51);
    case (52)
        obs = CodeEph_Irr(52);
    case (53)
        obs = CodeEph_Irr(53);
    case (54)
        obs = CodeEph_Irr(54);
    case (55)
        obs = CodeEph_Irr(55);
    case (56)
        obs = CodeEph_Irr(56);
    case (57)
        obs = CodeEph_Irr(57);
    case (58)
        obs = CodeEph_Irr(58);
    case (59)
        obs = CodeEph_Irr(59);
    case (60)
        obs = CodeEph_Irr(60);
        
    case (61)
        obs = CodeEph_Irr(61);
    case (62)
        obs = CodeEph_Irr(62);
    case (63)
        obs = CodeEph_Irr(63);
    case (64)
        obs = CodeEph_Irr(64);
    case (65)
        obs = CodeEph_Irr(65);
    case (66)
        obs = CodeEph_Irr(66);
    case (67)
        obs = CodeEph_Irr(67);
    case (68)
        obs = CodeEph_Irr(68);
    case (69)
        obs = CodeEph_Irr(69);
    case (70)
        obs = CodeEph_Irr(70);
        
    case (71)
        obs = CodeEph_Irr(71);
    
        
    case (599)
        obs = 'Jupiter';
end

% compute time, expressed as TDB seconds past J2000 TDB (2451545.0)

etime = 86400.0d0 * (et - 2451545.0d0);

% compute position and velocity vectors in eme2000 system (no corrections)

starg = mice_spkezr(targ, etime, 'J2000', 'NONE', obs);

% provide output in user-requested units

if (km == 1)
    
    % state is kilometers and kilometers/second
    
    rrd = starg.state;
    
else
    
    % state is au's and au's/day
    
    rrd(1:3) = starg.state(1:3) / au;
    
    rrd(4:6) = 86400.0 * starg.state(4:6) / au;
    
    rrd = rrd';
    
end

cspice_unload(ephname);

end

