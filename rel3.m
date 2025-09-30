function rel = rel3(n)

% Creates a relation matrix for the numbers 1, ..., n, where a and b are related if the greatest common divisor gcd(a, b) = 3.

rel = zeros(n); % Initiates the matrix

for j = 1 : n
    for k = 1 : n
        if gcd3(j, k) == 3 % Checks the condition.
            rel(j, k) = 1; % Puts 1 into matrix (otherwise 0)
        end
    end
end

end