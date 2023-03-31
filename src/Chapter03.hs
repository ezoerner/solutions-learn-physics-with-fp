-----------------------------------------------------------------------------
-- |
-- Module      : Chapter03
-- Description : Types and Entities
--
-- Copyright   : (c) Eric Zoerner, 2023
-- License     : BSD3
-- Maintainer  : eric.zoerner@proton.me
--
-----------------------------------------------------------------------------

module Chapter03 where

------------------
-- * Exercise 3.1
------------------
{- $ex31
__(a)__ @(False || (True && False)) || True@

>:: Bool

__(b)__ @((2 / 3) / 4) == ((4 / 3) /2)@

>:: Bool

__(c)__ @((7 - (5 / 4)) > 6) || (((2 ^ 5) - 1) == 31)@

>:: Bool

__(d)__ @2 < 3 < 4@

/Not well formed: cannot operate on Bool with comparison operators./

__(e)__ @(2 < 3) || (3 < 4)@

>:: Bool

__(f)__ @2 && 3 < 4@

/Not well formed: cannot operate on numeric types with logical && operator./
-}

------------------
-- * Exercise 3.2
------------------

-- | @f(x) = { 0, x ≤ 0; x, x > 0}@
f :: Double -> Double
f x =
  if x <= 0
    then 0
    else x

-- | @E(r) = { r, r ≤ 1; 1/r², r > 1}@
e :: Double -> Double
e r =
  if r <= 1
    then r
    else 1 / r ** 2

-- * Exercise 3.3

-- | Returns 'True' if the input character is @\'X\'@ or @\'Y\'@
-- or else 'False'.
--
-- >>> isXorY 'X'
-- True
-- >>> isXorY 'Y'
-- True
-- >>> isXorY 'Z'
-- False
isXorY :: Char -> Bool
isXorY 'X' = True
isXorY 'Y' = True
isXorY _ = False

------------------
-- * Exercise 3.4
------------------

-- | Returns @100@ if the person is checking bags and @0@ if not.
-- Implemented with @if-then-else@.
bagFee :: Bool -> Int
bagFee isCheckingBags = if isCheckingBags then 100 else 0

-- | Returns @100@ if the person is checking bags and @0@ if not.
-- Implemented with pattern matching on the input.
bagFee2 :: Bool -> Int
bagFee2 True = 100
bagFee2 _ = 0

------------------
-- * Exercise 3.5
------------------

-- | Returns 'True' if the given integer is greater than 50 or else 'False'
greaterThan50 :: Integer -> Bool
greaterThan50 n = n > 50

------------------
-- * Exercise 3.6
------------------

-- | Double the score without going over 100
amazingCurve :: Int -> Int
amazingCurve score = min 100 (score ^ 2)

------------------
-- * Exercise 3.7
------------------
{- $ex37
>>> :type bagFee False
bagFee False :: Int

>>> bagFee False
0
-}

------------------
-- * Exercise 3.8
------------------

-- | @circleRadius = 3.5@
circleRadius :: Double
circleRadius = 3.5

-- | @cot x = 1 / tan x@
cot :: Double -> Double
cot x = 1 / tan x

-- | @fe epsilon = epsilon * tan (epsilon * pi / 2)@
fe :: Double -> Double
fe epsilon = epsilon * tan (epsilon * pi / 2)

-- | @fo epsilon = -epsilon * cot (epsilon * pi / 2)@
fo :: Double -> Double
fo epsilon = -epsilon * cot (epsilon * pi / 2)

-- | @g nu epsilon = sqrt (nu ** 2 - epsilon ** 2)@
g :: Double -> Double -> Double
g nu epsilon = sqrt (nu ** 2 - epsilon ** 2)

------------------
-- * Exercise 3.9
------------------
{- $ex39
__How many functions with type @Bool -> Bool@ are there?__

/There are 4 @Bool -> Bool@ functions./

__What would be good names for them?__

/@alwaysFalse@, @alwaysTrue@, 'identity', and 'not'/

__How many functions have type @Bool -> Bool -> Bool@?__

/There are 16 @Bool -> Bool -> Bool@ functions./

Source: [The 16 Boolean Logic Functions of Two-Input Systems](https://www.allaboutcircuits.com/technical-articles/16-boolean-logic-functions-of-2-input-system/)
-}

------------------
-- * Exercise 3.10
------------------
-- $ex310
-- > True || False && False