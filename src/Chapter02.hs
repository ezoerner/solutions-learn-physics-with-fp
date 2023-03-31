-----------------------------------------------------------------------------
-- |
-- Module      : Chapter02
-- Description : Writing Basic Functions
--
-- Copyright   : (c) Eric Zoerner, 2023
-- License     : BSD3
-- Maintainer  : eric.zoerner@proton.me
--
-----------------------------------------------------------------------------

{-# OPTIONS_GHC -Wno-name-shadowing #-}

module Chapter02 where

------------------
-- * Exercise 2.1
------------------

-- | @f(x) = √ (1 + x)@
--
-- >>> f 0
-- 1.0
-- >>> f 1
-- 1.4142135623730951
-- >>> f 3
-- 2.0
f :: Floating a => a -> a
f x = sqrt (1 + x)

------------------
-- * Exercise 2.2.
------------------

-- | Standard Earth gravity acceleration at sea level in m/s².
stdGravityMPS2 :: Double
stdGravityMPS2 = 9.80665

-- | Assuming an initial velocity of 30 m\/s, accepts as input the time
-- (after the rock was thrown) in seconds and gives
-- as output the height of the rock in meters.
yRock30 :: Double -> Double
yRock30 t = 0.5 * (-stdGravityMPS2) * t ** 2 + 30 * t

------------------
-- * Exercise 2.3.
------------------

-- | Accepts as input the time (after the rock was thrown) in seconds and
-- gives as output the upward velocity of the rock in meters per second.
-- A downward velocity is returned as a negative number.
vRock30 :: Double -> Double
vRock30 t = 30 - stdGravityMPS2 * t

------------------
-- * Exercise 2.4.
------------------

-- | Computes the sine of an angle given in degrees.
--
-- >>> sinDeg 30
-- 0.49999999999999994
sinDeg :: Double -> Double
sinDeg deg = sin (deg * pi / 180)

------------------
-- * Exercise 2.5.
------------------

-- | @f(x) = ∛x@
f25 :: Double -> Double
f25 x = x ** (1 / 3)

-- | @g(ɣ) = e^ɣ+8^ɣ@
g :: Double -> Double
g ɣ = exp ɣ + 8 ** ɣ

-- | @h(x) = 1/√((x-5)²+16)@
h :: Double -> Double
h x = 1 / sqrt ((x - 5) ** 2 + 16)

-- | @ɣ(β) = 1/√(1 - β²)@
ɣ :: Double -> Double
ɣ β = 1 / sqrt (1 - β ** 2)

-- | @U(x) = 1/(10+x)+1(10-x)@
bigU :: Double -> Double
bigU x = (1 / (10 - x)) + (1 / (10 - x))

-- | @L(l) = √(l(l + 1))@
bigL :: Double -> Double
bigL l = sqrt (l * (l + 1))

-- | @E(x) = 1 / (|x|³)@
bigEx :: Double -> Double
bigEx x = 1 / abs x ** 3

-- | @E(z) = 1 \/ (z²+4)^(3\/2)@
bigEz :: Double -> Double
bigEz z = 1 / ((z ** 2 + 4) ** (3 / 2))

------------------
-- * Exercise 2.6.
------------------
{- $ex26

__(a)__ @\b -> 1 / sqrt (1 - b ** 2)@

__(b)__

>>> (\b -> 1 / sqrt (1 - b ** 2)) 0.8
1.666666666666667
 -}
