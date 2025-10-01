% istransitive.m

% Hugo Lindfors (huglih251)

% The function accepts a (rel)ation (mat)rix as a parameter
function tra = istransitive(relmat)

tra = true;

% m, n are the side lenths of our relation matrix
[m, n] = size(relmat);

% Here we check if it's a square matrix or not; if it isn't, it's pointless to check transitivity
if m == n

  % The definition of transitive is that for x, y, z ∈ A, if xRy and yRz, then xRz must be true in order for A to be transitive.
  for x = 1 : n
    for y = 1 : n

      % We check if xRy
      if relmat(x, y)
        for z = 1 : n

          % We check if yRz
          if relmat(y, z)

            % We check if xRz
            if ~relmat(x, z)
              tra = false;
            end
          end
        end
      end
    end
  end
else
  disp("The provided relation matrix `rel` is not square matrix.")
end

end