# Copyright 2020 - Gampol T.
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
import unicode

proc isPalindrome1(n:int):bool =
  var s = $n
  for i in 1..len(s) div 2:
    if s[i-1] != s[^i]: return false
  return true

proc isPalindrome(n:int):bool =
  return $n == reversed($n)

proc compute =
  var maxPalindrome = 0
  for i in 100..999:
    for j in 100..999:
      var n = i * j
      if n > maxPalindrome and n.isPalindrome:
        maxPalindrome = n
  echo maxPalindrome

compute()
# echo reversed("123456")