/negative passes
pass["PASS equal ints"](=;1;2)
pass["PASS more than"](>;1;2)

/negative fails
fail["FAIL unequal names"](~=;`a;`b)
fail["FAIL less than"](<;1;2)

/positive passes
pass["PASS unequal names"](~=;`a;`b)
pass["PASS atomic name type"](=;`n;@`a)

/postive fails
fail["FAIL more than"](>;1;1)
fail["FAIL more than or eq 1"](~<;1;2)
