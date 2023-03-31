-----------------------------------------------------------------------------
-- |
-- Module      : Chapter04
-- Description : Describing Motion
--
-- Copyright   : (c) Eric Zoerner, 2023
-- License     : BSD3
-- Maintainer  : eric.zoerner@proton.me
--
-----------------------------------------------------------------------------

module Chapter04 where

-- | alias R to be a Double as an approximate of a real number
type R = Double

-- | A derivative is a function of a real to real that yields another
-- function of real to real
type Derivative = (R -> R) -> R -> R

-- | Numerical derivation given a small delta
derivative :: R -> Derivative
derivative dt x t = (x (t + dt / 2) - x (t - dt / 2)) / dt

------------------
-- * Exercise 4.1
------------------
-- $ex41
-- __Why does @derivative 0.1@ not produce exactly the identity function on real numbers?__
--
-- /Because @0.1@ cannot be represented exactly in a Double./
--
-- /See:/ [Why 0.1 Does Not Exist In Floating-Point](https://www.exploringbinary.com/why-0-point-1-does-not-exist-in-floating-point)
--
-- >>> derivative 10 f41 1
-- 1.0
-- >>> derivative 1 f41 1
-- 1.0
-- >>> derivative 0.1 f41 1
-- 1.0000000000000002

-- | @f(x) = ½x²@
f41 :: R -> R
f41 x = 1 / 2 * x ** 2


------------------
-- * Exercise 4.2
------------------
{- $ex42
/(See functions 'f42', 'err42' below.)/

/Evaluating the derivative at different values of @x@ (the second argument):/

>>> err42 1 6
0.25

>>> err42 1 0.5
0.25

>>> err42 1 1
0.25


/It appears empirically that the error does not depend on @x@ at all,/
/it only depends on @a@./

/Exploring the error for different values of @a@:/

>>> err42 1 1
0.25

>>> err42 0.1 1
2.500000000002167e-3

>>> err42 0.01 5
2.4999998515795596e-5

>>> err42 0.02 5
9.999999903698154e-5

>>> err42 0.03 5
2.249999984940132e-4

/After some trial and error, it is deduced that it follows a pattern like:/

> err(a) = a²/4

/This formula is the implementation of the 'errA' function below./

__When @x = 4@, @Df (4) = 48@. What value of @a@ produces an error of__
__@1@ percent at @x = 4@?__

/Use the formula we came up with, and solving for @a@:/

@
a²/4 = (0.01)(48)
a² = (0.01)(48)(4)
a = √ ((0.01)(48)(4))
@

>>> sqrt $ 0.01 * 48 * 4
1.3856406460551018

__When @x = 0.1@, @Df (0.1) = 0.03@.__
__What value of a produces an error of @1@ percent at @x = 0.1@?__

/Again, solving for @a@:/

@
a²/4 = (0.01)(0.03)
a² = (0.01)(0.03)(4)
a = √ ((0.01)(0.03)(4))
@

>>> sqrt $ 0.01 * 0.03 * 4
3.4641016151377546e-2
-}

-- | @f(x) = x³@
f42 :: R -> R
f42 x = x ** 3

-- | Derivative of 'f42', @f(x) = 3x²@.
df42 :: R -> R
df42 x = 3 * x ** 2

-- | Error function: Returns the error between a numerical derivative estimate
-- and the provided analytical derivative.
errF ::
  -- | @f@: The original function
  (R -> R) ->
  -- | @df@: The analytical derivative function
  (R -> R) ->
  -- | @a@: The delta ("dt") value
  R ->
  -- | @x@: The x value of the function
  R ->
  -- | Returns the error
  R
errF f df a x = abs $ derivative a f x - df x

-- | Error function for 'f42'.
err42 ::
  -- | @a@: The delta ("dt") value
  R ->
  -- | @x@: The x value of the function
  R ->
  -- | Returns the error
  R
err42 = errF f42 df42

-- | Returns the error in terms of @a@ (the "delta").
-- The expression for the error is apparantly @a²/4@.
-- This formula was just determined empirically by putting a bunch of
-- @a@ values into 'err42' and looking at the pattern of results.
errA ::
  -- | @a@: The delta value
  R ->
  -- | Returns the error
  R
errA a = a ** 2 / 4

------------------
-- * Exercise 4.3
------------------
{- $ex43
/Using the expression @'errA' a@ from Exercise 4.2,/
/using @0.01@ for the value of @a@, solve for x in @errA 0.01 >= 0.10 * x@./

@
0.01²/4 ≥ 0.10x
0.10x ≤ 0.01²/4
x ≤ 0.01²\/4\/0.10
@

>>> 0.01 ** 2 / 4 / 0.10
2.5e-4

/Therefore:/
@x ≤ 2.5e-4@
 -}

------------------
-- * Exercise 4.4
------------------
{- $ex44
-- /TO DO/
-}

f44 :: R -> R
f44 = cos

df44 :: R -> R
df44 x = -sin x

------------------
-- * Exercise 4.5
------------------
{- $ex45
-- /TO DO/
-}

-- Note: analytic derivative of `5x²` is `10x`.


