function rrd = Eph_JovianRegular_ind (et, ntarg, ncent)

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

ephname = 'jup365-Regular.bsp';

km = 1; 

au = 149597871; 

cspice_furnsh(ephname);

% set name of target body
switch ntarg
    
    case (1)
        
        targ = 'Io';
        
    case (2)
        
        targ = 'Europa';
        
    case (3)
        
        targ = 'Ganymede';
        
    case (4)
        
        targ = 'Callisto';
        
    case (5)
        
        targ = 'Amalthea';
        
    case (6)
        
        targ = 'Thebe';
        
    case (7)
        
        targ = 'Adrastea';
        
    case (8)
        
        targ = 'Metis';
        
    case (599)
        
        targ = 'Jupiter';
        
end

% set name of central body
switch ncent
    
    case (1)
        
        obs = 'Io';
        
    case (2)
        
        obs = 'Europa';
        
    case (3)
        
        obs = 'Ganymede';
        
    case (4)
        
        obs = 'Callisto';
        
    case(5)
        
        obs = 'Amalthea';
        
    case (6)
        
        obs = 'Thebe';
        
    case (7)
        
        obs = 'Adrastea';
        
    case (8)
        
        obs = 'Metis';
        
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

