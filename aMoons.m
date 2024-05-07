function a = aMoons(im)
n = nMoons(im);

T = 2*pi/n; % T in secs
muJupiter = muPlanets(5);
a = (muJupiter*T^2/(4*pi^2))^(1/3); % a in km
end
