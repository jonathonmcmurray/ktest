"m.k shakti testing 2019.03.26"
/USAGE: $ k m.k <tests.k>
/2019.03.21 - Initial version
/2019.03.22 - Make pass/fail into functions
/2019.03.26 - Store results in table
r:+[n:();p:`i$();v:`i$()]                                   /results table
pass:{r,:[n:x;p:1;v:.:y];}                                  /run a test & add results to table
fail:{r,:[n:x;p:0;v:~.:y];}                                 /run a test & add results to table
."\\l ",.z.x 1                                              /load file defining tests
l:{` 0:x,"\n"}                                              /log to stdout

l"tests run: ",($#:r),", positive tests: ",($+/r`v),"\n";   /summary results
l"pass tests: ",($#:p),", positive: ",$+/p:r[`v]@&:r`p;     /pass results
l"fail tests: ",($#:f),", positive: ",$+/f:r[`v]@&:~r`p;    /fail results

if[+/~:r`v;l"\nNEGATIVE TESTS:\n","\n"/:r[`n]@&:~r`v;FAIL]; /check for negs
\\                                                          /otherwise exit
