function rel = relation3(n)

% Skapar en relationsmatris för talen 1, ..., n, där a och b
% är relaterade om sgd(a, b) = 3.

rel = zeros(n);                     % Initierar matrisen

for j = 1:n
    for k = 1:n
        if sgd(j, k) == 3           % Kollar villkoret. 
            rel(j, k) = 1;          % Sätter 1 i matris (annars 0)
        end
    end
end

end