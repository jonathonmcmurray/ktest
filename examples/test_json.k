/should["decode json dict"](~;`a`b!1 2;`j?"{\"a\":1,\"b\":2}")
should["SHOULD decode json table"](~;,`a`b!1 2;`j?"[{\"a\":1,\"b\":2}]")
should["SHOULD decode json char array"](~;"abc";`j?"[\"a\",\"b\",\"c\"]")
should["SHOULD decode json string array"](~;("abc";"bcd";"cde");`j?"[\"abc\",\"bcd\",\"cde\"]")

t:+`a`b`c!(1 2 3;"abc";1.7 2.5 3.9)
should["SHOULD enc & dec table"](~;t;`j?`j@t)
/should["enc & dec dict"](~;*t;`j?`j@*t)
