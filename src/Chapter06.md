# Chapter 6: Higher-Order Functions

## Exercise 6.1.
See `Chapter06.hs`

## Exercise 6.2.
```haskell
ghci> :t take 4
take 4 :: [a] -> [a]
```

## Exercise 6.3.
*The function map has type `(a -> b) -> [a] -> [b]`. This means that `map` is expecting a function with type `a -> b` as its first argument. The function `not` has type `Bool -> Bool`. Can `not` be the first argument to `map`?*

**Yes.**


 *If so, what is the type of `map not`?*

```haskell
[Bool] -> [Bool]
```

*Show how, starting from the types of `map` and `not`, you can figure out the type of `map not`.*

```haskell
map :: (a -> b) -> [a] -> [b]
not :: Bool -> Bool
```
With `not` as the first parameter, this binds type `a` to `Bool` and type `b` to `Bool`, so now we have:

```haskell
map :: (Bool -> Bool) -> [Bool] -> [Bool]
```
After the first parameter is applied to `not`, the type becomes `[Bool] -> [Bool]`.

Verified in `ghci`:
```haskell
ghci> :t map not
map not :: [Bool] -> [Bool]
```

## Exercise 6.4.
See `Chapter06.hs`

## Exercise 6.5.
See `Chapter06.hs`

## Exercise 6.6.
See `Chapter06.hs`

## Exercise 6.7.
`String` is a type synonym for `[Char]`, so `"xxx"` has type `[Char]`.

## Exercise 6.8.
See `Chapter06.hs` for the function definition.
```haskell
ghci> take 10 first1000Squares
[0,1,4,9,16,25,36,49,64,81]
```

## Exercise 6.9.
See `Chapter06.hs`

## Exercise 6.10.
See `Chapter06.hs`

