{- |
Module      : Chapter01
Description : Calculating with Haskell
Copyright   : (c) Eric Zoerner, 2023
License     : BSD3
Maintainer  : eric.zoerner@proton.me

= Exercise 1.1.
/Evaluate sin 30 in GHCi. Why is it not equal to 0.5?/

>>> sin 30
-0.9880316240928618

Because `sin` expects the angle in radians.

>>> sin (30/180 * pi)
0.49999999999999994

= Exercise 1.2.
/Add parentheses to the following expressions to indicate the order in which Haskell’s precedence and associativity rules would evaluate the expressions:/

@
  (a) 2 ^ 3 ^ 4
  (b) 2 \/ 3 \/ 4
  (c) 7 - 5 \/ 4
  (d) log 49 \/ 7
@

__Solutions:__

@
  (a) 2 ^ (3 ^ 4)
  (b) (2 \/ 3) \/ 4
  (c) 7 - (5 \/ 4)
  (d) (log 49) \/ 7
@
 -}

module Chapter01 where
