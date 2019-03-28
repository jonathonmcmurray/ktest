# ktest

[![Build Status](https://travis-ci.com/jonathonmcmurray/ktest.svg?branch=master)](https://travis-ci.com/jonathonmcmurray/ktest)

Very basic testing for [shakti](https://shakti.com/) (k7). Install shakti trial
from [Anaconda](https://anaconda.org/shaktidb).

## Usage:

```
$ k m.k <tests.k>
```

`tests.k` should be a file defining tests in form of calls to one/two functions
(one for tests that should pass \[`pass`\], another for those that should fail
\[`fail`\]). Some examples are included in `examples/`

e.g.

```
pass["pass equal numbers"]"1=1";
fail["fail equal numbers"](=;1;2);
```

Tests themselves should be either parse trees or strings (something that can be
evaluated with `.`) and should return a boolean.

For pass tests, a positive result is 1. For fail tests, a positive result is 0. 

Test names should be unique (across pass & fail). In examples, pass tests are
prepended with `PASS` and fail tests with `FAIL` to ensure uniqueness - this is
not essential if test names are unique already.

As tests are function calls, if additional code is necessary between tests
(e.g. mocking data etc.) simply insert this code between calls to `pass`/`fail`.

## Limitations

This is pretty basic & limited. One significant limiting factor is that shakti
doesn't have protected execution (yet). So tests have to "work" i.e. return a
value, not hit an error.

## Examples

First example has positive result on all tests (passes when it should, fails
when it should):

```
(base) jonny@ursus ~/git/ktest $ k m.k examples/test_positive.k
2019.03.20T00:07:31 L 4cpu 1gb avx ©shakti
"m.k shakti testing 2019.03.21"
tests run: 23, positive tests: 23

pass tests: 13, positive: 13
fail tests: 10, positive: 10
(base) jonny@ursus ~/git/ktest $ echo $?
0
```

Next has some negative results (fails when it should pass & vice versa):

```
(base) jonny@ursus ~/git/ktest $ k m.k examples/test_negative.k
2019.03.20T00:07:31 L 4cpu 1gb avx ©shakti
"m.k shakti testing 2019.03.21"
tests run: 8, positive tests: 4

pass tests: 4, positive: 2
fail tests: 4, positive: 2

NEGATIVE PASS TESTS:
PASS equal ints
PASS more than

NEGATIVE FAIL TESTS:
FAIL unequal names
FAIL less than

value error: FAIL

(base) jonny@ursus ~/git/ktest $ echo $?
1
```

Note that exit code is non-zero when there are negative results, easing
use in automated testing. This is achieved by triggering a `value error`
 (as there doesn't seem to be a way of setting exit code in shakti, yet).

Finally there is a test for JSON enc/dec in shakti:

```
(base) jonny@ursus ~/git/ktest $ k m.k examples/test_json.k
2019.03.20T00:07:31 L 4cpu 1gb avx ©shakti
"m.k shakti testing 2019.03.21"
tests run: 4, positive tests: 4

pass tests: 4, positive: 4
fail tests: 0, positive: 0
(base) jonny@ursus ~/git/ktest $ echo $?
0
```

## Travis-CI

This repo also contains an example config for [Travis-CI](https://travis-ci.com/)
This will run all the example tests (for the positive test, this will run
on Mac OS as well as Linux).

This works by installing Miniconda & then using this to install shakti
trial, which is then used to run tests.

To use in your own projects, you can use a similar config & add a step to
download `m.k` from this repo in addition to installing conda & shakti. (I
suggest pulling `m.k` from a specific commit or tag, in case of breaking
changes in `master` branch)
