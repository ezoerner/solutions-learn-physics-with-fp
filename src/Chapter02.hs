module Chapter02 where

---------------
-- Exercise 2.1
---------------
f :: Floating a => a -> a
f x = sqrt (1 + x)

---------------
-- Exercise 2.2
---------------
stdGravityMPS2 :: Double
stdGravityMPS2 = 9.80665

yRock30 :: Double -> Double
yRock30 t = 0.5 * (-stdGravityMPS2) * t ** 2 + 30 * t

---------------
-- Exercise 2.3
---------------
vRock30 :: Double -> Double
vRock30 t = 30 - stdGravityMPS2 * t

---------------
-- Exercise 2.4
---------------
sinDeg :: Double -> Double
sinDeg deg = sin (deg * pi / 180)

---------------
-- Exercise 2.5
---------------
cubeRoot :: Double -> Double
cubeRoot x = x ** (1 / 3)

g :: Double -> Double
g y = exp y + 8 ** y

h :: Double -> Double
h x = 1 / ((x - 5) ** 2 + 16)

gamma :: Double -> Double
gamma beta = 1 / sqrt (1 - beta ** 2)

bigU :: Double -> Double
bigU x = (1 / (10 - x)) + (1 / (10 - x))

bigL :: Double -> Double
bigL ell = sqrt (ell * (ell + 1))

bigEx :: Double -> Double
bigEx x = 1 / abs x ** 3

bigEz :: Double -> Double
bigEz z = 1 / ((z ** 2 + 4) ** (3 / 2))
