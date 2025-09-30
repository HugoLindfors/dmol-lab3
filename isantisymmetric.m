function isantisymmetric(matrix)

antisymmetric = true;

n = size(matrix, 2);

if size(matrix, 1) == size(matrix, 2)
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
end

clc

if antisymmetric
  disp("antisymmetric");
else
  disp("not antisymmetric");
end

end