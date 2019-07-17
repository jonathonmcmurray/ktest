should["SHOULD decode json dict"](~;`a`b!1 2f;`j?"{\"a\":1,\"b\":2}")
should["SHOULD decode json table"](~;,`a`b!1 2f;`j?"[{\"a\":1,\"b\":2}]")
should["SHOULD decode json char array"](~;,,:'"abc";,`j?"[\"a\",\"b\",\"c\"]")
should["SHOULD decode json string array"](~;,("abc";"bcd";"cde");,`j?"[\"abc\",\"bcd\",\"cde\"]")

t:+`a`b`c!(1 2 3f;,:'"abc";1.7 2.5 3.9)
should["SHOULD enc & dec table"](~;t;`j?`j@t)
should["SHOULD enc & dec dict"](~;*t;`j?`j@*t)

should["SHOULD parse json starting with empty object"](~;{a:{};b:123f};`j?"{\"a\":{},\"b\":123}")
should["SHOULD parse json with empty object in it"](~;{c:456f;a:{};b:123f};`j?"{\"c\":456,\"a\":{},\"b\":123}")
