/positive shouldes
should["SHOULD equal ints"](=;1;1)
should["SHOULD equal names"](=;,`a;,`a)
should["SHOULD unequal ints"](~=;1;2)
should["SHOULD unequal names"](~=;,`a;,`b)
should["SHOULD atomic name type"](=;,`n;,@`a)
should["SHOULD list int type"](=;,`i;,@1 2 3)
should["SHOULD more than"](>;2;1)
should["SHOULD more than or eq 1"](~<;1;1)
should["SHOULD more than or eq 2"](~<;2;1)
should["SHOULD less than"](<;1;2)
should["SHOULD less than or eq 1"](~>;1;1)
should["SHOULD less than or eq 2"](~>;1;2)
should["SHOULD string test"]"1=1"

/positive shouldnots
shouldnot["SHOULD NOT equal ints"](=;1;2)
shouldnot["SHOULD NOT equal names"](=;,`a;,`b)
shouldnot["SHOULD NOT unequal ints"](~=;1;1)
shouldnot["SHOULD NOT unequal names"](~=;,`a;,`a)
shouldnot["SHOULD NOT atomic name type"](=;,`n;,@1)
shouldnot["SHOULD NOT list int type"](=;,`I;,@`a)
shouldnot["SHOULD NOT more than"](>;1;1)
shouldnot["SHOULD NOT more than or eq 1"](~<;1;2)
shouldnot["SHOULD NOT less than"](<;1;1)
shouldnot["SHOULD NOT less than or eq 1"](~>;2;1)
