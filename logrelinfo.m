function logrelinfo(rel)
ref = isreflexive(rel);
sym = issymmetric(rel);
ant = isantisymmetric(rel);
tra = istransitive(rel);

disp("reflexive: " + ref)
disp("symmetric: " + sym)
disp("antisymmetric: " + ant)
disp("transitive: " + tra)
end