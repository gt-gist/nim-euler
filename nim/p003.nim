# Copyright 2020 - Gampol T.
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

import math

proc smallest_prime(n:int64):int64 =
  assert n >= 2
  for i in 2..sqrt(n.toBiggestFloat).floor.toInt:
    if n mod i == 0:
      return i
  return n  # n itself is prime

proc compute:string =
  var n = 600851475143
  while true:
    var p = smallest_prime(n)
    if p < n:
      n = n div p
    else:
      return $n

echo compute()