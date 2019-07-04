/negative shoulds
should["SHOULD equal ints"](=;1;2)
should["SHOULD more than"](>;1;2)

/negative shouldnots
shouldnot["SHOULD NOT unequal names"](~=;`a;`b)
shouldnot["SHOULD NOT less than"](<;1;2)

/positive shoulds
should["SHOULD unequal names"](~=;`a;`b)
should["SHOULD atomic name type"](=;`n;@`a)

/postive shouldnots
shouldnot["SHOULD NOT more than"](>;1;1)
shouldnot["SHOULD NOT more than or eq 1"](~<;1;2)
