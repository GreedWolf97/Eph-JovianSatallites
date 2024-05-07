function mu = muMoons(im)
% gravational parameters of Galilean moons of Jupiter
list = [5959.916 
        3202.739 
        9887.834 
        7179.289];
mu = list(im); %km3/s2
end