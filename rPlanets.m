function r = rPlanets(ip)
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
radi = [2439; 
        6051.800000000000181899;
        6378.136999999999716238;
        3396.190000000000054570;
        71492;
        60268;
        25559;
        24764;
        1195];
    
r = radi(ip);

% if planet_id <= 4
%    rp_min = radi(planet_id) + 900; %设置水，金，地，火的借力高度最低为900km，可以更改
% else
%     rp_min = radi(planet_id) + 8000; %设置木，土，天，海，冥的借力高度最低为8000km，可以更改
% end
end