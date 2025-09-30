function issymmetric(matrix)

symmetric = true;

n = size(matrix, 2);

if size(matrix, 1) == size(matrix, 2)
  for x = 1 : n
    for y = 1 : n
      if matrix(x, y) ~= matrix(y, x)
        symmetric = false;
      end
    end
  end
else
  symmetric = false;
end

clc

if symmetric
  disp("symmetric");
else
  disp("asymmetric");
end

end