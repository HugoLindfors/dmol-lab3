% isreflexive.m

% Hugo Lindfors (huglih251)

% The function accepts a relationship, for example isreflexive([1, 0, 0; 0, 1, 0; 0, 0, 1]), called `rel` as a parameter
function r = isreflexive(rel)

% n is initiated as the `size` function of `rel` and 2
n = size(rel, 2);

r = 1; % `r` is initiated as 1 (TRUE)

% Python equivalent: `for j in range(1, n):`
for j = 1 : n
    if rel(j, j) == 0
        r = 0; % Change `r` to 0 (FALSE)
    end

end

end