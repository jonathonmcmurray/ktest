"m.k shakti testing 2019.03.21"
/USAGE: $ k m.k <tests.k>
/2019.03.21 - Initial version
pass:fail:()!()                                             /dictionaries to put tests in
."\\l ",.z.x 1                                              /load file defining tests
l:{` 0:x,"\n"}                                              /log to stdout

pass:.:'pass                                                /eval pass tests
fail:~.:'fail                                               /eval fails tests, invert
a:pass,fail                                                 /combine tests for summary
l"tests run: ",($#:a),", positive tests: ",($+/a),"\n";     /summary results
l"pass tests: ",($#:pass),", positive: ",$+/pass;           /pass results
l"fail tests: ",($#:fail),", positive: ",$+/fail;           /fail results

o:""                                                        /string for neg tests
if[#f:&pass=0;o,:"\nNEGATIVE PASS TESTS:\n","\n"/:f];       /neg passes
if[#f:&fail=0;o,:"\nNEGATIVE FAIL TESTS:\n","\n"/:f];       /neg fails

if[#o;l o;FAIL];                                            /check for any negs
\\                                                          /otherwise exit
