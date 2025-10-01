% issymmmetric.m

% Hugo Lindfors (huglih251)

% The function accepts a (rel)ation matrix as a parameter
function sym = issymmetric(matrix)

sym = true;

% m, n are the side lenths of our relation matrix
[m, n] = size(matrix);

% Here we check if it's a square matrix or not; if it isn't, it's pointless to check symmetry
if m == n
  for i = 1 : n
    for j = 1 : n
      if matrix(i, j) ~= matrix(j, i)
        sym = false;
      end
    end
  end
else
  sym = false;
end

end