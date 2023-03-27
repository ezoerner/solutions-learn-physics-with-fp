module Chapter07 where

import Chapter02 (yRock30)
import Chapter06 (yRock)
import Graphics.Gnuplot.Simple (plotFunc)

type R = Double

plot1 :: IO ()
plot1 = plotFunc [] ([-10, -9.99 .. 10] :: [R]) sin

plot2 :: IO ()
plot2 = plotFunc [] [0, 0.01 .. 6] yRock30

plot3 :: IO ()
plot3 = plotFunc [] [0, 0.01 .. 4] (yRock 20)