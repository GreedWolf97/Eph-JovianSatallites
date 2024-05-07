function mu = muPlanets(ip)
% planet_id - planet identifier:
% 1 = Mercury
% 2 = Venus
% 3 = Earth
% 4 = Mars
% 5 = Jupiter
% 6 = Saturn
% 7 = Uranus
% 8 = Neptune
% 9 = Pluto
list = [22032.090000000000145519152284;
      324858.592079000023659318685532;
      398600.441500000015366822481155;
      42828.375640999998722691088915;
      126686534.921800000000; 
      37931284.0000000000000000000;
      5793965.663939275778830051422119; 
      6835107.00000000000000000000;
      873.767447398032004457490984];
mu = list(ip); %km3/s2
end