function relmat = rel3(n)

relmat = zeros(n, n);

for i = 1 : n
    for j = 1 : n
        if mygcd_recursive(i, j) == 3
            relmat(i, j) = 1;
        end
    end
end

end