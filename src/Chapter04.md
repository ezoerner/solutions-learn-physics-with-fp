## Exercise 4.1.
```
ghci> derivative 10 f 1
1.0
ghci> derivative 1 f 1
1.0
ghci> derivative 0.1 f 1
1.0000000000000002
```
**Why does derivative 0.1 not produce exactly the identity function on real numbers?**

--> Because 0.1 cannot be represented exactly in a Double

---
## Exercise 4.2.
*By evaluating the derivative at different values of x, see if you can find a pattern for the error introduced by the numerical derivative. After you find the pattern for this error, extend your exploration to derivative a for different values of a. Can you give an expression for the error in terms of a?*

```
ghci> err42 1 6
0.25
ghci> err42 1 0.5
0.25
ghci> err42 1 1
0.25
ghci> err42 0.1 1
2.500000000002167e-3
ghci> err42 0.1 2
2.4999999999781863e-3
ghci> err42 0.1 4
2.499999999841407e-3
ghci> err42 0.1 6
2.4999999997703526e-3
```

The error does not depend on x at all, it only depends on a.

```
ghci> err42 1 1
0.25
ghci> err42 0.1 1
2.500000000002167e-3
ghci> err42 0.01 5
2.4999998515795596e-5
ghci> err42 0.02 5
9.999999903698154e-5
ghci> err42 0.03 5
2.249999984940132e-4
```

```
err a = a**2 / 4
```
--> This formula was just determined empirically by putting in a bunch of
values and looking at the pattern of results.

*When x = 4, Df (4) = 48. What value of a produces an error of 1 percent at x = 4?*
```
a**2/4 = 0.01 * 48
a**2/4 = 0.48
a**2 = 1.92
a = sqrt 1.92 = 1.3856406460551018
```

*When x = 0.1, Df (0.1) = 0.03. What value of a produces an error of 1 percent at x = 0.1?*

```
a**2/4 = 0.01*0.1
a**2/4 = 0.001
a**2 = 0.004
a = sqrt 0.004 = 6.324555320336758e-2
```
---
## Exercise 4.3.
*Find a function and a value of its independent variable so that derivative 0.01 produces at least a 10 percent error compared to the exact derivative.*

-> Using the function from Exercise 4.2.

```
0.10 * n <= 0.01**2/4
n <= 0.0001/0.4
n <= 2.5e-4
```

## Exercise 4.4.
TO DO

## Exercise 4.5.
Note: analytic derivative of `5x²` is `10x`.

TO DO