## Exercise 5.1.
```haskell
ghci> :{
ghci| numbers :: [R]
ghci| numbers = [-2.0, -1.2..2.0]
ghci| :}
ghci> numbers
[-2.0,-1.2,-0.3999999999999999,0.40000000000000036,1.2000000000000002,2.0]
```

## Exercise 5.2.
See `sndItem0` in `Chapter05.hs`.

## Exercise 5.3.
`Int`

## Exercise 5.4.
See `repeatInt` in `Chapter05.hs`.
Returns an infinite list of a single Int

## Exercise 5.5.
See `null'` in `Chapter05.hs`.

## Exercise 5.6.
See `last'` in `Chapter05.hs`.

## Exercise 5.7.
See `palindrome` in `Chapter05.hs`.

## Exercise 5.8.
```haskell
ghci> take 5 [9, 1..]
[9,1,-7,-15,-23]
```

## Exercise 5.9
See `cycle'` in `Chapter05.hs`

## Exercise 5.10.
  1. `["hello", 42]`  -> *invalid*
  2. `['h', "ello"]` -> *invalid*
  3. `['a','b,'c']` -> `[Char]` (or `String`)
  4. `length ['w','h','o']` -> `Int`
  5. `length "hello"` -> `Int`
  6. `reverse` -> `[a] -> [a]`

## Exercise 5.11.
*When using ranges with floating-point values, it accepts spill-overs up to half-delta, to fend off rounding issues*

From **Haskell 2010 Language Report**:

*[e1, e1 + i .. e3]* == `enumFromThenTo e1 (e1 + i) e3`
> For `Float` and `Double`, the semantics of the `enumFrom` family is given by the rules for `Int` above, except that the list terminates when the elements become greater than *e3 + i∕2* for positive increment *i*, or when they become less than *e3 + i∕2* for negative i.

## Exercise 5.12.
See `euler` and `pi'` in `Chapter05.hs`.

## Exercise 5.13.
See `fact` in `Chapter05.hs`.

## Exercise 5.14.
See `expList` and `calcSeriesLengthWithinPercent` in `Chapter05.hs`
```
ghci> ex514 = calcSeriesLengthWithinPercent expList exp 1
ghci> ex514 1
Just 50
ghci> ex514 10
Just 4969
```

## Exercise 5.15.
See `expSeries` and `calcSeriesLengthWithinPercent` in `Chapter05.hs`
```
ghci> ex515 = calcSeriesLengthWithinPercent expSeries exp 1
ghci> ex515 1
Just 4
ghci> ex515 10
Just 18
```

