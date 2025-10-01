% isantisymmetric.m

% Hugo Lindfors (huglih251)

% The function accepts a (rel)ation matrix as a parameter
function ant = isantisymmetric(matrix)

ant = true;

[m, n] = size(matrix);

% Here we check if it's a square matrix or not; if it isn't, it's pointless to check antisymmetry
if m == n
  for x = 1 : n
    for y = 1 : n
      if matrix(x, y) == matrix(y, x) ...
          && matrix(x, y) ~= 0 ...
          && x ~= y
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