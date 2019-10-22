"m.k shakti testing 2019.07.04"
/USAGE: $ k m.k <tests.k>
/2019.03.21 - Initial version
/2019.03.22 - Make pass/fail into functions
/2019.03.26 - Store results in table
/2019.03.28 - Add exit codes
/2019.04.13 - "should", "shouldnot"
/2019.04.29 - "must"
/2019.07.04 - error trapping, fixes
/2019.10.22 - dict syntax
r:+`n`p`v!(();!0;!0)                                        /results table
test:{{(0;x)}{(1;.:x)}/:x}                                  /"value" w/ catching errors
should0:{
 (s;n):test z;
 V:$[s;((~:;::)x)n;s];
 r,:`n`p`v!(y;x;V)
 }
should:should0[1]
shouldnot:should0[0]
."\\l ",.z.x 1+*&.z.x like "m.k";                           /load file defining tests (first after m.k)
l:{` 1:x,"\n"}                                              /log to stdout
ex:{$[x;."\\kill ",$.z.i;."\\\\"]}                          /exit with non-zero/zero exit code

l"tests run: ",($#:r),", passed: ",($+/r`v),"\n";           /summary results

if[+/~:r`v;l"\nFAILED TESTS:\n","\n"/:r[`n]@&:~r`v;ex 1];   /check for negs
ex 0                                                        /otherwise exit
