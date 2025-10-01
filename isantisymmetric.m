% isantisymmetric.m

% Hugo Lindfors (huglih251)

% The function accepts a (rel)ation (mat)rix as a parameter
function ant = isantisymmetric(relmat)

ant = true;

[m, n] = size(relmat);

% Here we check if it's a square matrix or not; if it isn't, it's pointless to check antisymmetry
if m == n
  for i = 1 : n
    for j = 1 : n
      if matrix(i, j) == matrix(j, i) ...
          && matrix(i, j) ~= 0 ...
          && i ~= j
        antisymmetric = false;
        break;
      end
    end
    if ~antisymmetric
      break;
    end
  end
else
  disp("The provided relation matrix `rel` is not square matrix.")
end

end