function lab3_8(n)

relmat = rel3(n);

clc % (cl)ear (c)ommand window for better readability

ref = isreflexive(relmat);
sym = issymmetric(relmat);
ant = isantisymmetric(relmat);
tra = istransitive(relmat);

disp("reflexive: " + ref)
disp("symmetric: " + sym)
disp("antisymmetric: " + ant)
disp("transitive: " + tra)
end