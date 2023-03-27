module Chapter06 where

import Chapter02 (stdGravityMPS2)

-------------------------------------------------------
-- Exercise 6.1. --

type R = Double

yRock :: R -> R -> R
yRock v0 t = 0.5 * (-stdGravityMPS2) * t ** 2 + v0 * t

vRock :: R -> R -> R
vRock v0 t = v0 - stdGravityMPS2 * t

-------------------------------------------------------

-- | Exercise 6.4.
greaterThanOrEq7' :: Int -> Bool
greaterThanOrEq7' n = n >= 7

-- | Exercise 6.5. True if and only if s has length > n
isLongerThan :: Int -> String -> Bool
isLongerThan n s = length s > n

-- | Exercise 6.6. Has more than 6 elements
hasMoreThan6Elements :: [a] -> Bool
hasMoreThan6Elements as = length as > 6

-- | Exercise 6.8.
first1000Squares :: [Integer]
first1000Squares = [n ^ 2 | n <- [0 .. 999]]

-- | Exercise 6.9.
repeat' :: a -> [a]
repeat' = iterate id

-- | Exercise 6.10.
replicate' :: Int -> a -> [a]
replicate' n a = take n $ repeat a
