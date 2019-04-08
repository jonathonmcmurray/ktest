#!/bin/bash

run() { 
  if k m.k "$1"; then
    echo -e "\e[32mTEST PASSED: $1\e[0m";
  else
    echo -e "\e[31mTEST FAILED: $1\e[0m";
  fi
 }

for t in examples/*.k; do
  run "$t"
done
