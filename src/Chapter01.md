# Chapter 1: Calculating With Haskell
## Exercise 1.1.
*Evaluate sin 30 in GHCi. Why is it not equal to 0.5?*
```
ghci> sin 30
-0.9880316240928618
```
Because `sin` expects the angle in radians
```
ghci> sin (30/180 * pi)
0.49999999999999994
```

## Exercise 1.2.
*Add parentheses to the following expressions to indicate the order in which Haskell’s precedence and associativity rules would evaluate the expressions:*

  1. 2 ^ 3 ^ 4
  2. 2 / 3 / 4
  3. 7 - 5 / 4
  4. log 49 / 7
---
**Solutions:**

  1. `2 ^ (3 ^ 4)`
  2. `(2 / 3) / 4`
  3. `7 - (5 / 4)`
  4. `(log 49) / 7`

## Exercise 1.3.
*Use GHCi to find `log₂ 32`.*
```
ghci> logBase 2 32
5.0
```

## Exercise 1.4.
*Use the `atan2` function in GHCi to find the polar coordinates (r,θ) associated with Cartesian coordinates (x, y) = (–3,4).*
```
ghci> theta = atan2 4 (-3)
ghci> x = -3
ghci> y = 4
ghci> theta = atan2 y x
ghci> r = sqrt (x**2 + y**2)
ghci> (r, theta)
(5.0,2.214297435588181)
```

## Exercise 1.5.
*Find a new example of a calculation in which the computer produces a result that is just a little bit different from the exact result.*
```
ghci> 3 ** (logBase 3 10)
10.000000000000002
```

## Exercise 1.6.
*Why is there no associativity listed for the equality, inequality, and comparison operators in Table 1-2? (Hint: write down the simplest expression you can think of that would require the associativity rules to resolve the precedence of comparison operators and try to make sense of it.)*

---
```
3 < 4 < 5
```

Because comparison, equality, and inequality operators evaluate to Boolean values which cannot be further operated on with these same operators.