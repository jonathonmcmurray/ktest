#!/bin/bash

eval "k m.k $1 &"
PID=$!
wait $PID
exit $?
