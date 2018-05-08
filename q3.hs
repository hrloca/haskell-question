{-

  https://projecteuler.net/problem=3

  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?

  13195の素因数は5,7,13および29です。
  数字600851475143の最大の素因数は何ですか？

-}

factors :: Integer -> [Integer]
factors n = [x | x <- [1..n], mod n x == 0]

minFactor :: Integer -> Integer
minFactor n = (factors n) !! 1

factorization :: Integer -> [Integer]
factorization 1 = []
factorization x = (minFactor x) : factorization (x `div` (minFactor x))

answer = last . factorization

main = print $ answer 600851475143