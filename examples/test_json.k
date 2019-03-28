/pass["decode json dict"](~;`a`b!1 2;`j?"{\"a\":1,\"b\":2}")
pass["PASS decode json table"](~;,`a`b!1 2;`j?"[{\"a\":1,\"b\":2}]")
pass["PASS decode json char array"](~;"abc";`j?"[\"a\",\"b\",\"c\"]")
pass["PASS decode json string array"](~;("abc";"bcd";"cde");`j?"[\"abc\",\"bcd\",\"cde\"]")

t:+`a`b`c!(1 2 3;"abc";1.7 2.5 3.9)
pass["PASS enc & dec table"](~;t;`j?`j@t)
/pass["enc & dec dict"](~;*t;`j?`j@*t)
