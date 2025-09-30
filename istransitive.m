function istransitive(matrix)

transitive = true;

n = size(matrix, 2);

if size(matrix, 1) == size(matrix, 2)
  for x = 1 : n
    for y = 1 : n
      if matrix(x, y) ~= matrix(y, x)
        transitive = false;
      end
    end
  end
else
  transitive = false;
end

clc

if transitive
  disp("trans<<<lative");
else
  disp("a transitive");
end

end