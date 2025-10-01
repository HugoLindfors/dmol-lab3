
function r = reflexiv(rel)

n = size(rel, 2);

r = 1; 

for j = 1:n
    if rel(j, j) == 0
        r = 0;
    end
end

end