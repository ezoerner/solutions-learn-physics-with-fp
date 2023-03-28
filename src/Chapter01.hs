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
Evaluate @sin 30@ in GHCi. Why is it not equal to @0.5@?

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
Use the @atan2@ function in GHCi to find the polar coordinates @(r,θ)@ associated
with Cartesian coordinates @(x, y) = (–3,4)@.

>>> theta = atan2 4 (-3)
>>> x = -3
>>> y = 4
>>> theta = atan2 y x
>>> r = sqrt (x**2 + y**2)
>>> (r, theta)
(5.0,2.214297435588181)
-}

------------------
-- * Exercise 1.5.
------------------
{- $ex15
Find a new example of a calculation in which the computer produces a result that
is just a little bit different from the exact result.

>>> 3 ** (logBase 3 10)
10.000000000000002
-}

------------------
-- * Exercise 1.6.
------------------
{- $ex16
Why is there no associativity listed for the equality, inequality, and
comparison operators in Table 1-2? (Hint: write down the simplest expression you
can think of that would require the associativity rules to resolve the
precedence of comparison operators and try to make sense of it.)

> 3 < 4 < 5

/Because comparison, equality, and inequality operators evaluate to Boolean values which cannot be further operated on with these same operators./
-}

