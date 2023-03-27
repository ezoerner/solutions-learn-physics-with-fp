module Chapter05 where

import Data.List (find)

sndItem0 :: [a] -> a
sndItem0 as =
  if null as
    then error "Empty list has no second element."
    else
      if length as == 1
        then error "1-item list has no 2nd item."
        else as !! 1

-- Return an infinite list of a single Int
repeatInt :: Int -> [Int]
repeatInt = repeat

null' :: [a] -> Bool
null' as = length as == 0

last' :: [a] -> a
-- last' as = head $ reverse as
last' = head . reverse

palindrome :: String -> Bool
palindrome as = reverse as == as

cycle' :: [a] -> [a]
cycle' [] = error "empty list"
cycle' as = concat $ repeat as

type R = Double

euler :: R
euler = sum [1 / fromIntegral n ** 2 | n <- [1 .. 100]]

pi' :: R
pi' = sqrt $ euler * 6

fact :: Integer -> Integer
fact n = product [n, (n - 1) .. 1]

expList :: R -> [R]
expList x = [(1 + x / n) ** n | n <- [1, 2 ..]]

calcSeriesLengthWithinPercent :: (R -> [R]) -> (R -> R) -> R -> R -> Maybe Int
calcSeriesLengthWithinPercent seriesFn actFn pct x =
  snd <$> find (\tup -> fst tup >= (actFn x * ((100 - pct) / 100))) (zip (seriesFn x) [1 ..])

expSeries :: R -> [R]
expSeries x =
  let terms :: Integer -> [R]
      terms i =
        [ x ^ m / fromIntegral (fact m)
          | m <- [0 .. i]
        ]
   in [sum $ terms i | i <- [1 ..]]
