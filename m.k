"m.k shakti testing 2019.03.28"
/USAGE: $ k m.k <tests.k>
/2019.03.21 - Initial version
/2019.03.22 - Make pass/fail into functions
/2019.03.26 - Store results in table
/2019.03.28 - Add exit codes
/2019.04.13 - "should", "shouldnot"
r:+`n`p`v!(();!0;!0)                                        /results table
should:{r,:[n:x;p:1;v:.:y];}                                /run a test & add results to table
shouldnot:{r,:[n:x;p:0;v:~.:y];}                            /run a test & add results to table
."\\l ",.z.x 1                                              /load file defining tests
l:{""2:x,"\n"}                                              /log to stdout
ex:{$[x;."\\kill ",$.z.i;."\\\\"]}                          /exit with non-zero/zero exit code

l"tests run: ",($#:r),", passed: ",($+/r`v),"\n";           /summary results

if[+/~:r`v;l"\nFAILED TESTS:\n","\n"/:r[`n]@&:~r`v;ex 1];   /check for negs
ex 0                                                        /otherwise exit
