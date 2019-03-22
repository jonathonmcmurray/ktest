"m.k shakti testing 2019.03.22"
/USAGE: $ k m.k <tests.k>
/2019.03.21 - Initial version
/2019.03.22 - Make pass/fail into functions
p:f:()!`i$()                                                /dictionaries to put results in
pass:{p[x]:.:y;}                                            /run a test that should pass
fail:{f[x]:~.:y;}                                           /run a test that should fail
."\\l ",.z.x 1                                              /load file defining tests
l:{` 0:x,"\n"}                                              /log to stdout

a:p,f                                                       /combine tests for summary
l"tests run: ",($#:a),", positive tests: ",($+/a),"\n";     /summary results
l"pass tests: ",($#:p),", positive: ",$+/p;                 /pass results
l"fail tests: ",($#:f),", positive: ",$+/f;                 /fail results

o:""                                                        /string for neg tests
if[#n:&p=0;o,:"\nNEGATIVE PASS TESTS:\n","\n"/:n];          /neg passes
if[#n:&f=0;o,:"\nNEGATIVE FAIL TESTS:\n","\n"/:n];          /neg fails

if[#o;l o;FAIL];                                            /check for any negs
\\                                                          /otherwise exit
