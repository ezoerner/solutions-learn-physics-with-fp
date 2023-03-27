# Chapter 2: Writing Basic Functions
## Exercise 2.1.
*In a Haskell program file (a new file with a new name that ends in .hs), define the function f(x) = [see book]. As we did for the function `square`, give both a type signature and a function definition. Then load this file into GHCi and check that f (0) gives 1, f (1) gives about 1.414, and f (3) gives 2.*

```
f :: Double -> Double
f x = sqrt (1 + x)
```
```
ghci> f 0
1.0
ghci> f 1
1.4142135623730951
ghci> f 3
2.0
```

## Exercise 2.2
*Consider throwing a rock straight upward from the ground at 30 m/s. Ignoring air resistance, find an expression `y(t)` for the height of the rock as a function of time.
Add on to your program file `first.hs` by writing a function*

`yRock30 :: Double -> Double`

*that accepts as input the time (after the rock was thrown) in seconds and gives as output the height of the rock in meters.*
```
stdGravityMPS2 :: Double
stdGravityMPS2 = 9.80665

yRock30 :: Double -> Double
yRock30 t = 0.5 * (-stdGravityMPS2) * (t * t) + 30 * t
```

## Exercise 2.3
*Continuing with the rock example, write a function*

`vRock30 :: Double -> Double`

*that accepts as input the time (after the rock was thrown) in seconds and gives as output the upward velocity of the rock in meters per second. (A downward velocity should be returned as a negative number.)*

```
vRock30 :: Double -> Double
vRock30 t = 30 - stdGravityMPS2 * t
```

## Exercise 2.4
*Define a function `sinDeg` that computes the sine of an angle given in degrees. Test your function by evaluating sinDeg 30.*
```
sinDeg :: Double -> Double
sinDeg deg = sin (deg * pi / 180)
```
```
ghci> sinDeg 30
0.49999999999999994
```

## Exercise 2.5
*Write Haskell function definitions for the following mathematical functions. In each case, write a type signature (the type should be `Double -> Double` for each function) and a function definition. You will need to pick alternative names for some of these functions because Haskell functions must begin with a lowercase letter. Do not use more than two levels of nested parentheses.*

[see book for functions]

See `Chapter02.hs` for solutions

## Exercise 2.6

1. *Express [see book] as an anonymous function*

```
\b -> 1 / sqrt (1 - b ** 2)
```

2. *Write an expression that applies the anonymous function from part (a) to the argument 0.8. What result do you get from GHCi?*

```
ghci> (\b -> 1 / sqrt (1 - b ** 2)) 0.8
1.666666666666667
```