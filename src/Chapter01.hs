{- |
Module      : Chapter01
Description : Calculating with Haskell

Copyright   : (c) Eric Zoerner, 2023
License     : BSD3
Maintainer  : eric.zoerner@proton.me
-}

module Chapter01 where

------------------
-- * Exercise 1.1.
------------------
{- $ex11
__Why is @sin 30@ not equal to @0.5@?__

>>> sin 30
-0.9880316240928618

/Because @sin@ expects the angle in radians./

>>> sin (30/180 * pi)
0.49999999999999994
-}

------------------
-- * Exercise 1.2.
------------------
{- $ex12
@
  __(a)__ 2 ^ (3 ^ 4)
  __(b)__ (2 \/ 3) \/ 4
  __(c)__ 7 - (5 \/ 4)
  __(d)__ (log 49) \/ 7
@
-}

------------------
-- * Exercise 1.3.
------------------
{- $ex13
>>> logBase 2 32
5.0
-}

------------------
-- * Exercise 1.4.
------------------
{- $ex14
__Calculate the polar coordinates @(r,θ)@ for Cartesian coordinates @(x, y) = (–3,4)@.__

>>> theta = atan2 4 (-3)
>>> x = -3
>>> y = 4
>>> θ = atan2 y x
>>> r = sqrt (x**2 + y**2)
>>> (r, θ)
(5.0,2.214297435588181)
-}

------------------
-- * Exercise 1.5.
------------------
{- $ex15
__Find a new example of a non-exact calculation result.__

>>> 3 ** (logBase 3 10)
10.000000000000002
-}

------------------
-- * Exercise 1.6.
------------------
{- $ex16
__Why does associativity not apply for the equality, inequality, and__
__comparison operators?__

> 3 < 4 < 5

/Because comparison, equality, and inequality operators evaluate to Boolean values which cannot be further operated on with these same operators./
-}

