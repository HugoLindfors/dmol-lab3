% isreflexive.m

% Hugo Lindfors (huglih251) + Niklas Eriksen (nen)

% The function accepts a (rel)ation (mat)rix as a parameter
function ref = isreflexive(relmat)

ref = true;

% m, n are the side lenths of our relation matrix
[m, n] = size(relmat);

% Here we check if it's a square matrix or not; if it isn't, it's pointless to check reflexity
if m == n
    for i = 1 : n
        if ~relmat(i, i)
            ref = false;
        end
    end
else
  disp("The provided relation matrix `rel` is not square matrix.")
end

end