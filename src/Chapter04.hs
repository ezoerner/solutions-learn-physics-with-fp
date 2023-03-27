module Chapter04 where

type R = Double

type Derivative = (R -> R) -> R -> R

derivative :: R -> Derivative
derivative dt x t = (x (t + dt / 2) - x (t - dt / 2)) / dt

---------------
-- Exercise 4.1
---------------
f41 :: R -> R
f41 x = 1 / 2 * x ** 2

---------------
-- Exercise 4.2
---------------

f42 :: R -> R
f42 x = x ** 3

df42 :: R -> R
df42 x = 3 * x ** 2

errF :: (R -> R) -> (R -> R) -> R -> R -> R
errF f df a x = abs $ derivative a f x - df x

err42 :: R -> R -> R
err42 = errF f42 df42

errA :: R -> R
errA a = a ** 2 / 4

---------------
-- Exercise 4.4
---------------
f44 :: R -> R
f44 = cos

df44 :: R -> R
df44 x = -sin x
