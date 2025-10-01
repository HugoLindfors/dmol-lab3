% relmat.m

% Hugo Lindfors (huglih251)

% The function accepts a (rel)ation as a parameter and returns a (r)elation (m)atrix // This does not work
function rm = relmat(rel)

n = max(rel());
rm = zeros(n, n);

for i = 1 : length(rel)
    for j = 1 : length(rel)
        rm(x, y) = 1;
    end
end

end