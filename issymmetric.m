% issymmmetric.m

% Hugo Lindfors (huglih251)

% The function accepts a (rel)ation (mat)rix as a parameter
function sym = issymmetric(relmat)

sym = true;

% m, n are the side lenths of our relation matrix
[m, n] = size(relmat);

% Here we check if it's a square matrix or not; if it isn't, it's pointless to check symmetry
if m == n
  for i = 1 : n
    for j = 1 : n
      if relmat(i, j) ~= relmat(j, i)
        sym = false;
      end
    end
  end
else
  sym = false;
end

end